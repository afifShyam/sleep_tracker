part of 'questions_bloc.dart';

@freezed
class QuestionsEvent with _$QuestionsEvent {
  const factory QuestionsEvent.getQuestions(String categoryId) = GetQuestions;
  const factory QuestionsEvent.resetStatus() = ResetStatus;
  const factory QuestionsEvent.answerQuestion(
      int questionIndex, int selectedOptionIndex) = AnswerQuestion;
  const factory QuestionsEvent.showSolution(
      int questionIndex, List<String?> solutions) = ShowSolution;
}
