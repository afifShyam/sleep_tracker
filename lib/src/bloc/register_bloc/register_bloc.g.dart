// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterStateImpl _$$RegisterStateImplFromJson(Map<String, dynamic> json) =>
    _$RegisterStateImpl(
      registerStatus:
          $enumDecode(_$RegisterStatusEnumMap, json['registerStatus']),
      loggedUser: $enumDecode(_$UserLoggedEnumMap, json['loggedUser']),
      error: json['error'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      profileLogout: json['profileLogout'] as bool,
      newData: _fromJsonDocumentReference(json['newData'] as String?),
    );

Map<String, dynamic> _$$RegisterStateImplToJson(_$RegisterStateImpl instance) =>
    <String, dynamic>{
      'registerStatus': _$RegisterStatusEnumMap[instance.registerStatus]!,
      'loggedUser': _$UserLoggedEnumMap[instance.loggedUser]!,
      'error': instance.error,
      'user': instance.user,
      'profileLogout': instance.profileLogout,
      'newData': _toJsonDocumentReference(instance.newData),
    };

const _$RegisterStatusEnumMap = {
  RegisterStatus.initial: 'initial',
  RegisterStatus.loading: 'loading',
  RegisterStatus.completed: 'completed',
  RegisterStatus.error: 'error',
};

const _$UserLoggedEnumMap = {
  UserLogged.signedIn: 'signedIn',
  UserLogged.signedOut: 'signedOut',
  UserLogged.errorSign: 'errorSign',
};
