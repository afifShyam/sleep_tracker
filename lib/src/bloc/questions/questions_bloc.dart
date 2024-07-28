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
    on<GetCategoryList>(_getCategoryList);
    on<GetCategoryId>(_getCategoryId);
  }

  Future<void> _getQuestions(GetQuestions event, Emitter emit) async {
    emit(state.copyWith(questionStatus: QuestionStatus.loading));
    try {
      final questions =
          await QuestionFirestore().getQuestions(event.categoryId);

      emit(state.copyWith(
        categoryQuestions: {
          ...state.categoryQuestions,
          event.categoryId: questions,
        },
        questionStatus: QuestionStatus.fetchQuestion,
      ));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(questionStatus: QuestionStatus.error));
    }
  }

  void _resetStatus(ResetStatus event, Emitter emit) =>
      emit(state.copyWith(questionStatus: QuestionStatus.initial));

  void _onAnswerQuestion(AnswerQuestion event, Emitter<QuestionsState> emit) {
    final categoryId = event.categoryId;
    final selectedOptionIndex = event.selectedOptionIndex;
    final questionIndex = event.questionIndex;

    // Check if questionIndex is within the valid range
    if (questionIndex < 0 ||
        questionIndex >= state.categoryQuestions[categoryId]!.length) {
      return;
    }

    final updatedUserAnswers = {
      ...state.categoryUserAnswers[categoryId] ?? {},
      questionIndex: selectedOptionIndex,
    };

    emit(state.copyWith(
      questionStatus: QuestionStatus.answerQuestion,
      categoryUserAnswers: {
        ...state.categoryUserAnswers,
        categoryId: updatedUserAnswers,
      },
    ));
  }

  void _onShowSolution(ShowSolution event, Emitter<QuestionsState> emit) {
    final categoryId = event.categoryId;
    final updatedSolutions = {
      ...state.categoryShownSolutions[categoryId] ?? {},
      event.questionIndex: event.solution,
    };

    emit(state.copyWith(
      categoryShownSolutions: {
        ...state.categoryShownSolutions,
        categoryId: updatedSolutions,
      },
    ));
  }

  Future<void> _getCategoryList(GetCategoryList event, Emitter emit) async {
    try {
      final categoryList = await QuestionFirestore().fetchCategoryIds();
      emit(state.copyWith(
          categoryList: categoryList,
          questionStatus: QuestionStatus.storeCategoryId));
    } catch (e) {
      log('error on GetCategoryList: $e');
      throw 'error on GetCategoryList: $e';
    }
  }

  void _getCategoryId(GetCategoryId event, Emitter emit) => emit(state.copyWith(
      categoryId: event.categoryId,
      questionStatus: QuestionStatus.getCategoryId));
}
