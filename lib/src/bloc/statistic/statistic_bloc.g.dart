// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticStateImpl _$$StatisticStateImplFromJson(Map<String, dynamic> json) =>
    _$StatisticStateImpl(
      status: $enumDecodeNullable(_$StaStatusEnumMap, json['status']) ??
          StaStatus.initial,
      isWeekly: json['isWeekly'] as bool? ?? false,
    );

Map<String, dynamic> _$$StatisticStateImplToJson(
        _$StatisticStateImpl instance) =>
    <String, dynamic>{
      'status': _$StaStatusEnumMap[instance.status]!,
      'isWeekly': instance.isWeekly,
    };

const _$StaStatusEnumMap = {
  StaStatus.initial: 'initial',
  StaStatus.loading: 'loading',
  StaStatus.success: 'success',
  StaStatus.error: 'error',
  StaStatus.empty: 'empty',
};
