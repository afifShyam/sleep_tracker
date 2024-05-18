import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sleep_tracker/src/index.dart';
part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';
part 'profile_bloc.g.dart';

class ProfileBloc extends HydratedBloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<GetData>(_getData);
    on<UpdateData>(_updateData);
    on<StoreImage>(_storeImage);
  }

  Future<void> _getData(GetData event, Emitter emit) async {
    try {
      final user = await FirebaseFirestore.instance
          .collection('users')
          .doc(GetDataFireBase.currentUserId)
          .get();

      if (user.exists) {
        emit(state.copyWith(profileStatus: ProfileStatus.loading));

        emit(
          state.copyWith(
            profileModel: ProfileModel(
              imageUrl: user.data()?['imageUrl'] ?? '',
              username: user.data()?['username'] ?? '',
              name: user.data()?['name'] ?? 'Name',
              age: user.data()?['age'] ?? 0,
              gender: user.data()?['gender'] ?? 'Male',
              phone: user.data()?['phone'] ?? 0,
              password: user.data()?['password'] ?? 'no password',
            ),
          ),
        );
        emit(state.copyWith(
          profileStatus: ProfileStatus.completed,
        ));
      }
    } catch (e) {
      emit(
        state.copyWith(
          profileStatus: ProfileStatus.error,
        ),
      );
    }
  }

  Future<void> _updateData(UpdateData event, Emitter emit) async {
    try {
      emit(state.copyWith(profileStatus: ProfileStatus.loading));

      final user = FirebaseFirestore.instance
          .collection('users')
          .doc(GetDataFireBase.currentUserId);

      user.update(
        ProfileModel(
          imageUrl: event.imageUrl,
          username: event.username,
          name: event.name,
          age: event.age,
          gender: event.gender,
          phone: event.phone,
          password: event.password,
        ).toJson(),
      );

      emit(
        state.copyWith(profileStatus: ProfileStatus.updated),
      );

      add(GetData(id: GetDataFireBase.currentUserId));
    } catch (e) {
      emit(
        state.copyWith(
          profileStatus: ProfileStatus.error,
        ),
      );
    }
  }

  Future<void> _storeImage(StoreImage event, Emitter emit) async {
    try {
      final imageFile = File(event.image);
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('profile_image')
          .child(GetDataFireBase.currentUserId);
      emit(state.copyWith(profileStatus: ProfileStatus.loading));

      await ref.putFile(imageFile);
      final selectedImage = await ref.getDownloadURL();
      emit(
        state.copyWith(
          image: selectedImage,
          profileStatus: ProfileStatus.changeImage,
        ),
      );
    } catch (e) {
      log('error to insert image $e');
      emit(
        state.copyWith(
          profileStatus: ProfileStatus.error,
        ),
      );
    }
  }

  @override
  ProfileState? fromJson(Map<String, dynamic> json) {
    try {
      final state = ProfileState.saveFromJson(json);
      return state;
    } catch (e) {
      log('Utama FromJson : $e');
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ProfileState state) {
    if (state.profileStatus == ProfileStatus.completed) {
      return state.saveToJson();
    }
    return null;
  }
}
