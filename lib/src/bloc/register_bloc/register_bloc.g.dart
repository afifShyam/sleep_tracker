// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterStateImpl _$$RegisterStateImplFromJson(Map<String, dynamic> json) =>
    _$RegisterStateImpl(
      registerStatus:
          $enumDecode(_$RegisterStatusEnumMap, json['registerStatus']),
      error: json['error'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      newData: _fromJsonDocumentReference(json['newData'] as String?),
    );

Map<String, dynamic> _$$RegisterStateImplToJson(_$RegisterStateImpl instance) =>
    <String, dynamic>{
      'registerStatus': _$RegisterStatusEnumMap[instance.registerStatus]!,
      'error': instance.error,
      'user': instance.user,
      'newData': _toJsonDocumentReference(instance.newData),
    };

const _$RegisterStatusEnumMap = {
  RegisterStatus.initial: 'initial',
  RegisterStatus.loading: 'loading',
  RegisterStatus.completed: 'completed',
  RegisterStatus.error: 'error',
};
