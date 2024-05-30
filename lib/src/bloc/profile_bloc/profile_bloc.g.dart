// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileStateImpl _$$ProfileStateImplFromJson(Map<String, dynamic> json) =>
    _$ProfileStateImpl(
      profileStatus: $enumDecode(_$ProfileStatusEnumMap, json['profileStatus']),
      profileModel:
          ProfileModel.fromJson(json['profileModel'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ProfileStateImplToJson(_$ProfileStateImpl instance) =>
    <String, dynamic>{
      'profileStatus': _$ProfileStatusEnumMap[instance.profileStatus]!,
      'profileModel': instance.profileModel,
      'image': instance.image,
    };

const _$ProfileStatusEnumMap = {
  ProfileStatus.initial: 'initial',
  ProfileStatus.loading: 'loading',
  ProfileStatus.completed: 'completed',
  ProfileStatus.error: 'error',
  ProfileStatus.updated: 'updated',
  ProfileStatus.changeImage: 'changeImage',
};
