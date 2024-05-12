part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

class GetData extends ProfileEvent {
  final String id;

  GetData({required this.id});
}

class UpdateData extends ProfileEvent {
  final String username;
  final String name;
  final int age;
  final int phone;
  final String password;
  final String gender;
  final String imageUrl;

  UpdateData({
    required this.username,
    required this.name,
    required this.age,
    required this.phone,
    required this.password,
    required this.gender,
    required this.imageUrl,
  });
}

class StoreImage extends ProfileEvent {
  final String image;

  StoreImage({required this.image});
}
