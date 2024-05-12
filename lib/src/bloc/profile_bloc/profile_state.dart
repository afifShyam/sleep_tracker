part of 'profile_bloc.dart';

enum ProfileStatus {
  initial,
  loading,
  completed,
  error,
  updated,
  changeImage,
}

@freezed
class ProfileState with _$ProfileState {
  ProfileState._();

  factory ProfileState({
    required ProfileStatus profileStatus,
    required ProfileModel profileModel,
    required String? image,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        profileStatus: ProfileStatus.initial,
        profileModel: ProfileModel.initial(),
        image: '',
      );

  factory ProfileState.saveFromJson(Map<String, dynamic> data) {
    return ProfileState(
      profileStatus: ProfileStatus.values.byName(data['profileStatus']),
      profileModel: ProfileModel.fromJson(data['profileModel']),
      image: data['image'],
    );
  }

  Map<String, dynamic> saveToJson() => {
        "profileStatus": profileStatus.name,
        "profileModel": profileModel.toJson(),
        "image": image,
      };

  factory ProfileState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStateFromJson(json);
}
