// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      answerType: (json['answerType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      solutions:
          (json['solutions'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answerType': instance.answerType,
      'solutions': instance.solutions,
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
