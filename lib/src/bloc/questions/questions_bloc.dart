import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sleep_tracker/src/index.dart';

part 'questions_state.dart';
part 'questions_event.dart';
part 'questions_bloc.freezed.dart';
part 'questions_bloc.g.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  QuestionsBloc() : super(QuestionsState.initial()) {
    on<GetQuestions>(_getQuestions);
    on<ResetStatus>(_resetStatus);
    on<AnswerQuestion>(_onAnswerQuestion);
    on<ShowSolution>(_onShowSolution);
  }

  Future<void> _getQuestions(
      GetQuestions event, Emitter<QuestionsState> emit) async {
    try {
      final questions =
          await QuestionFirestore().getQuestions(event.categoryId);

      log('Questions: $questions');
      emit(state.copyWith(
        questions: questions,
        questionStatus: QuestionStatus.fetchQuestion,
      ));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(questionStatus: QuestionStatus.error));
    }
  }

  void _resetStatus(ResetStatus event, Emitter<QuestionsState> emit) =>
      emit(state.copyWith(questionStatus: QuestionStatus.initial));

  void _onAnswerQuestion(AnswerQuestion event, Emitter<QuestionsState> emit) {
    final selectedOptionIndex = event.selectedOptionIndex;
    final questionIndex = event.questionIndex;

    // Check if questionIndex is within the valid range
    if (questionIndex < 0 || questionIndex >= state.questions.length) {
      return;
    }

    final question = state.questions[questionIndex];

    // Check if selectedOptionIndex is within the valid range
    if (selectedOptionIndex < 0 ||
        selectedOptionIndex >= question.answerType.length) {
      return;
    }

    final updatedAnswers = Map<int, int?>.from(state.userAnswers)
      ..[questionIndex] = selectedOptionIndex;

    emit(state.copyWith(
      questionStatus: QuestionStatus.answerQuestion,
      userAnswers: updatedAnswers,
    ));
  }

  void _onShowSolution(ShowSolution event, Emitter<QuestionsState> emit) {
    final updatedSolutions = Map<int, List<String?>>.from(state.shownSolutions)
      ..[event.questionIndex] = event.solutions;
    emit(state.copyWith(
      shownSolutions: updatedSolutions,
    ));
  }
}
