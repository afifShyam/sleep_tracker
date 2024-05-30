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
  final String email;

  UpdateData({
    required this.username,
    required this.name,
    required this.age,
    required this.phone,
    required this.password,
    required this.gender,
    required this.imageUrl,
    required this.email,
  });
}

class StoreImage extends ProfileEvent {
  final String image;

  StoreImage({required this.image});
}

class InsertQuestion extends ProfileEvent {
  final String a;
  final String b;
  final String c;
  final String d;
  final String sA;
  final String sB;
  final String sC;
  final String sD;

  InsertQuestion({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.sA,
    required this.sB,
    required this.sC,
    required this.sD,
  });
}
