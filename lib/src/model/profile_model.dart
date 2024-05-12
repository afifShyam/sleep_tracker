import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    required String imageUrl,
    required String username,
    required String name,
    required int age,
    required String gender,
    required int phone,
    required String password,
  }) = _ProfileModel;

  factory ProfileModel.initial() => ProfileModel(
        imageUrl: '',
        username: '',
        name: '',
        age: 5,
        gender: '',
        phone: 0,
        password: '',
      );

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
