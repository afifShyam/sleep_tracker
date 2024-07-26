// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionsStateImpl _$$QuestionsStateImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsStateImpl(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userAnswers: (json['userAnswers'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num?)?.toInt()),
      ),
      shownSolutions: (json['shownSolutions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k),
            (e as List<dynamic>).map((e) => e as String?).toList()),
      ),
      questionStatus:
          $enumDecode(_$QuestionStatusEnumMap, json['questionStatus']),
    );

Map<String, dynamic> _$$QuestionsStateImplToJson(
        _$QuestionsStateImpl instance) =>
    <String, dynamic>{
      'questions': instance.questions,
      'userAnswers':
          instance.userAnswers.map((k, e) => MapEntry(k.toString(), e)),
      'shownSolutions':
          instance.shownSolutions.map((k, e) => MapEntry(k.toString(), e)),
      'questionStatus': _$QuestionStatusEnumMap[instance.questionStatus]!,
    };

const _$QuestionStatusEnumMap = {
  QuestionStatus.initial: 'initial',
  QuestionStatus.loading: 'loading',
  QuestionStatus.fetchQuestion: 'fetchQuestion',
  QuestionStatus.error: 'error',
  QuestionStatus.answerQuestion: 'answerQuestion',
};
