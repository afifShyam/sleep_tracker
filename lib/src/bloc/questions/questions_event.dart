part of 'questions_bloc.dart';

@freezed
class QuestionsEvent with _$QuestionsEvent {
  const factory QuestionsEvent.getQuestions(String categoryId) = GetQuestions;
  const factory QuestionsEvent.resetStatus() = ResetStatus;
  const factory QuestionsEvent.answerQuestion(
          String categoryId, int questionIndex, int selectedOptionIndex) =
      AnswerQuestion;
  const factory QuestionsEvent.showSolution(
          String categoryId, int questionIndex, List<String?> solution) =
      ShowSolution;
  const factory QuestionsEvent.getCategoryList() = GetCategoryList;
  const factory QuestionsEvent.getCategoryId(String categoryId) = GetCategoryId;
}
