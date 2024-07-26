import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sleep_tracker/src/index.dart';

part 'register_bloc.freezed.dart';
part 'register_bloc.g.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial()) {
    on<UserRegister>(_userRegister);
    on<UserLogin>(_userLogin);
    on<UserLogout>(_userLogout);
    on<UserIsSigned>(_isSigned);
  }

  Future<void> _userRegister(UserRegister event, Emitter emit) async {
    try {
      emit(state.copyWith(registerStatus: RegisterStatus.loading));

      final auth = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      final id = auth.user!.uid;

      log('what isss $id');

      final docRef = FirebaseFirestore.instance.collection('users').doc(id);

      await docRef.set(
        UserModel(
          id: id,
          username: event.username,
          email: event.email,
          password: event.password,
        ).toJson(),
      );

      final user = UserModel(
        id: id,
        username: event.username,
        email: event.email,
        password: event.password,
      );

      emit(
        state.copyWith(
          user: user,
          newData: docRef,
          registerStatus: RegisterStatus.completed,
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          state.copyWith(
            error: 'your password is weak',
            registerStatus: RegisterStatus.error,
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          state.copyWith(
            error: 'The account already exists for that email.',
            registerStatus: RegisterStatus.error,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          error: 'User Register Error : $e',
          registerStatus: RegisterStatus.error,
        ),
      );
    }
  }

  Future<void> _userLogin(UserLogin event, Emitter emit) async {
    try {
      emit(state.copyWith(registerStatus: RegisterStatus.loading));

      final user = await FirebaseFirestore.instance
          .collection('users')
          .where('username', isEqualTo: event.username)
          .get();

      if (user.docs.isNotEmpty) {
        final userPass = user.docs.first.data()['password'];
        if (userPass == event.password) {
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: user.docs.first.data()['email'],
            password: event.password,
          );
          emit(state.copyWith(registerStatus: RegisterStatus.completed));
        } else {
          emit(state.copyWith(
              error: 'Wrong Password!', registerStatus: RegisterStatus.error));
        }
      } else {
        emit(
          state.copyWith(
            error: 'User Not Found!',
            registerStatus: RegisterStatus.error,
          ),
        );
      }

      if (event.username == 'Admin') {
        emit(state.copyWith(loggedUser: UserLogged.admin));
      }
    } on FirebaseFirestore catch (e) {
      log('Error to Login: $e');
      emit(
        state.copyWith(
          error: 'Error to Login: $e',
          registerStatus: RegisterStatus.error,
        ),
      );
    }
  }

  Future<void> _userLogout(UserLogout event, Emitter emit) async {
    try {
      await FirebaseAuth.instance.signOut();

      emit(
        state.copyWith(
          loggedUser: UserLogged.signedOut,
          profileLogout: true,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: 'Error to Logout',
        ),
      );
    }
    // await FirebaseAuth.instance.signOut().whenComplete(() {
    //   emit(
    //     state.copyWith(
    //       loggedUser: UserLogged.signedOut,
    //       profileLogout: true,
    //     ),
    //   );

    //   log('message');
    // }).catchError(
    //   (e) => emit(
    //     state.copyWith(
    //       error: 'Error to Logout',
    //     ),
    //   ),
    // );
  }

  void _isSigned(UserIsSigned event, Emitter emit) {
    try {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null) {
          emit(state.copyWith(loggedUser: UserLogged.signedOut));
        } else {
          emit(state.copyWith(loggedUser: UserLogged.signedIn));
        }
      });
    } on FirebaseAuthException catch (e) {
      log('Error to IsSigned $e');
      emit(
        state.copyWith(
          error: 'Error caught from IsSigned',
          loggedUser: UserLogged.errorSign,
        ),
      );
    }
  }
}
