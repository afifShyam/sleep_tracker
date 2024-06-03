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
      questionStatus:
          $enumDecode(_$QuestionStatusEnumMap, json['questionStatus']),
      userAnswers: (json['userAnswers'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num?)?.toInt()),
      ),
      shownSolutions: (json['shownSolutions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String?),
      ),
    );

Map<String, dynamic> _$$QuestionsStateImplToJson(
        _$QuestionsStateImpl instance) =>
    <String, dynamic>{
      'questions': instance.questions,
      'questionStatus': _$QuestionStatusEnumMap[instance.questionStatus]!,
      'userAnswers':
          instance.userAnswers.map((k, e) => MapEntry(k.toString(), e)),
      'shownSolutions':
          instance.shownSolutions.map((k, e) => MapEntry(k.toString(), e)),
    };

const _$QuestionStatusEnumMap = {
  QuestionStatus.intial: 'intial',
  QuestionStatus.error: 'error',
  QuestionStatus.loading: 'loading',
  QuestionStatus.fetchQuestion: 'fetchQuestion',
  QuestionStatus.answerQuestion: 'answerQuestion',
  QuestionStatus.storeAnswer: 'storeAnswer',
};
