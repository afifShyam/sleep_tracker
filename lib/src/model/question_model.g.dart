// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: (json['id'] as num).toInt(),
      question: json['question'] as String,
      answerType: $enumDecode(_$AnswerTypeEnumMap, json['answerType']),
      answer: json['answer'] as bool,
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answerType': _$AnswerTypeEnumMap[instance.answerType]!,
      'answer': instance.answer,
    };

const _$AnswerTypeEnumMap = {
  AnswerType.answerA: 'answerA',
  AnswerType.answerB: 'answerB',
  AnswerType.answerC: 'answerC',
  AnswerType.answerD: 'answerD',
  AnswerType.none: 'none',
};

_$SolutionModelImpl _$$SolutionModelImplFromJson(Map<String, dynamic> json) =>
    _$SolutionModelImpl(
      id: (json['id'] as num).toInt(),
      solution: json['solution'] as String,
    );

Map<String, dynamic> _$$SolutionModelImplToJson(_$SolutionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'solution': instance.solution,
    };
