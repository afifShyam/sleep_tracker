part of 'questions_bloc.dart';

enum QuestionStatus {
  intial,
  error,
  loading,
  fetchQuestion,
  answerQuestion,
  storeAnswer,
}

@freezed
class QuestionsState with _$QuestionsState {
  factory QuestionsState({
    required final List<QuestionModel> questions,
    required final QuestionStatus questionStatus,
    required final Map<int, int?> userAnswers,
    required final Map<int, String?> shownSolutions,
  }) = _QuestionsState;

  factory QuestionsState.initial() => QuestionsState(
        questions: [],
        userAnswers: {},
        shownSolutions: {},
        questionStatus: QuestionStatus.intial,
      );

  factory QuestionsState.fromJson(Map<String, dynamic> json) =>
      _$QuestionsStateFromJson(json);
}
