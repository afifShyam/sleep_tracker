import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required final String id,
    required final String username,
    required final String email,
    required final String password,
  }) = _UserModel;

  factory UserModel.initial() => UserModel(
        id: '',
        username: '',
        email: '',
        password: '',
      );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
