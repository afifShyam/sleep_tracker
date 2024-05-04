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
  }

  Future<void> _userRegister(UserRegister event, Emitter emit) async {
    try {
      emit(state.copyWith(registerStatus: RegisterStatus.loading));

      final docRef = FirebaseFirestore.instance.collection('users').doc();

      await docRef.set(
        UserModel(
          id: docRef.id,
          username: event.username,
          email: event.email,
          password: event.password,
        ).toJson(),
      );

      final user = UserModel(
        id: docRef.id,
        username: event.username,
        email: event.email,
        password: event.password,
      );

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
    } on FirebaseFirestore catch (e) {
      log('User Register Error : $e');
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
          // Use the email and password entered by the user
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email:
                user.docs.first.data()['email'], // Use the email from Firestore
            password: event.password, // Use the password entered by the user
          );
          emit(state.copyWith(registerStatus: RegisterStatus.completed));
        } else {
          emit(state.copyWith(registerStatus: RegisterStatus.error));
        }
      }

      log('what is this: ${user.docs.first.data()['id']}');
    } on FirebaseFirestore catch (e) {
      log('Error to Login: $e');
      emit(state.copyWith(registerStatus: RegisterStatus.error));
    }
  }
}
