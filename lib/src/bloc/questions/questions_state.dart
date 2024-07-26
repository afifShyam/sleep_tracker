part of 'questions_bloc.dart';

enum QuestionStatus {
  initial,
  loading,
  fetchQuestion,
  error,
  answerQuestion,
}

@freezed
class QuestionsState with _$QuestionsState {
  const factory QuestionsState({
    required List<QuestionModel> questions,
    required Map<int, int?>
        userAnswers, // Map of question index to selected option index
    required Map<int, List<String?>>
        shownSolutions, // Map of question index to shown solutions
    required QuestionStatus questionStatus,
  }) = _QuestionsState;

  factory QuestionsState.initial() => const QuestionsState(
        questions: [],
        userAnswers: {},
        shownSolutions: {},
        questionStatus: QuestionStatus.initial,
      );

  factory QuestionsState.fromJson(Map<String, dynamic> json) =>
      _$QuestionsStateFromJson(json);
}
