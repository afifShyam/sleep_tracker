part of 'questions_bloc.dart';

@freezed
class QuestionsEvent with _$QuestionsEvent {
  const factory QuestionsEvent.getQuestion(int numQuestion) = GetQuestions;
  factory QuestionsEvent.resetStatus() = ResetStatus;
  factory QuestionsEvent.answerQuestion(
      final int questionIndex, final int selectedOptionIndex) = AnswerQuestion;
  factory QuestionsEvent.showSolution(
      final int questionIndex, final String solution) = ShowSolution;
}
