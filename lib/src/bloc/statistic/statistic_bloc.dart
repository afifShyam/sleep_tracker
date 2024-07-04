import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistic_state.dart';
part 'statistic_event.dart';
part 'statistic_bloc.freezed.dart';
part 'statistic_bloc.g.dart';

class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  StatisticBloc() : super(StatisticState.initial()) {
    on<SetIsWeekly>(_setIsWeekly);
  }

  Future<void> _setIsWeekly(
    SetIsWeekly event,
    Emitter<StatisticState> emit,
  ) async =>
      emit(state.copyWith(isWeekly: event.value));
}
