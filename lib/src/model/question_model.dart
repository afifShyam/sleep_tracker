import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sleep_tracker/src/index.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    required int id,
    required String question,
    required AnswerType answerType,
    required bool answer,
  }) = _QuestionModel;

  factory QuestionModel.initial() => QuestionModel(
        id: 0,
        question: '',
        answerType: AnswerType.none,
        answer: false,
      );

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}

@freezed
class SolutionModel with _$SolutionModel {
  factory SolutionModel({
    required int id,
    required String solution,
  }) = _SolutionModel;

  factory SolutionModel.initial() => SolutionModel(
        id: 0,
        solution: '',
      );

  factory SolutionModel.fromJson(Map<String, dynamic> json) =>
      _$SolutionModelFromJson(json);
}
