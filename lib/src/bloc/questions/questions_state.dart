part of 'questions_bloc.dart';

enum QuestionStatus {
  initial,
  loading,
  fetchQuestion,
  error,
  answerQuestion,
  getCategoryId,
  storeCategoryId,
}

@freezed
class QuestionsState with _$QuestionsState {
  const factory QuestionsState({
    required Map<String, List<QuestionModel>> categoryQuestions,
    required Map<String, Map<int, int?>> categoryUserAnswers,
    required Map<String, Map<int, List<String?>>> categoryShownSolutions,
    required List<String> categoryList,
    required String categoryId,
    required QuestionStatus questionStatus,
  }) = _QuestionsState;

  factory QuestionsState.initial() => const QuestionsState(
        categoryQuestions: {},
        categoryUserAnswers: {},
        categoryShownSolutions: {},
        categoryList: [],
        categoryId: '',
        questionStatus: QuestionStatus.initial,
      );

  factory QuestionsState.fromJson(Map<String, dynamic> json) =>
      _$QuestionsStateFromJson(json);
}
