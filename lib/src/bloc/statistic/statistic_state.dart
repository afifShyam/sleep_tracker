part of 'statistic_bloc.dart';

enum StaStatus { initial, loading, success, error, empty }

@freezed
class StatisticState with _$StatisticState {
  StatisticState._();
  factory StatisticState({
    @Default(StaStatus.initial) StaStatus status,
    @Default(false) bool isWeekly,
  }) = _StatisticState;

  factory StatisticState.initial() => StatisticState(
        status: StaStatus.initial,
        isWeekly: false,
      );

  factory StatisticState.fromJson(Map<String, dynamic> json) =>
      _$StatisticStateFromJson(json);
}
