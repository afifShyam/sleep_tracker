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

  Future<void> _getQuestions(GetQuestions event, Emitter emit) async {
    try {
      final question = await QuestionFirestore().getQuestions();

      log('ada ko: $question');
      emit(state.copyWith(
        questions: question,
        questionStatus: QuestionStatus.fetchQuestion,
      ));
      // List<String> listQuestion = [];

      // for (var i = 0; i < event.numQuestion; i++) {
      //   final question = await FirebaseFirestore.instance
      //       .collection('question')
      //       .doc('question $i')
      //       .get();
      //   if (question.exists) {
      //     listQuestion.add(question.get('questions'));
      //   }
      // }
      // emit(state.copyWith(
      //   question: listQuestion,
      //   questionStatus: QuestionStatus.fetchQuestion,
      // ));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(questionStatus: QuestionStatus.error));
    }
  }

  void _resetStatus(ResetStatus event, Emitter emit) =>
      emit(state.copyWith(questionStatus: QuestionStatus.intial));

  void _onAnswerQuestion(AnswerQuestion event, Emitter<QuestionsState> emit) {
    final selectedOptionIndex = event.selectedOptionIndex;
    final question = state.questions[event.questionIndex];
    final solution = question.solutions[selectedOptionIndex];

    final updatedAnswers = Map<int, int?>.from(state.userAnswers)
      ..[event.questionIndex] = selectedOptionIndex;
    final updatedSolutions = Map<int, String?>.from(state.shownSolutions)
      ..[event.questionIndex] = solution;

    emit(state.copyWith(
      questionStatus: QuestionStatus.answerQuestion,
      userAnswers: updatedAnswers,
      shownSolutions: updatedSolutions,
    ));
  }

  void _onShowSolution(ShowSolution event, Emitter<QuestionsState> emit) {
    final updatedSolutions = Map<int, String?>.from(state.shownSolutions)
      ..[event.questionIndex] = event.solution;
    emit(state.copyWith(
      shownSolutions: updatedSolutions,
    ));
  }
}
