// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      imageUrl: json['imageUrl'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      phone: (json['phone'] as num).toInt(),
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'email': instance.email,
      'username': instance.username,
      'name': instance.name,
      'age': instance.age,
      'gender': instance.gender,
      'phone': instance.phone,
      'password': instance.password,
    };
