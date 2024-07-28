// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionsStateImpl _$$QuestionsStateImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsStateImpl(
      categoryQuestions:
          (json['categoryQuestions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      categoryUserAnswers:
          (json['categoryUserAnswers'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(int.parse(k), (e as num?)?.toInt()),
            )),
      ),
      categoryShownSolutions:
          (json['categoryShownSolutions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(int.parse(k),
                  (e as List<dynamic>).map((e) => e as String?).toList()),
            )),
      ),
      categoryList: (json['categoryList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      categoryId: json['categoryId'] as String,
      questionStatus:
          $enumDecode(_$QuestionStatusEnumMap, json['questionStatus']),
    );

Map<String, dynamic> _$$QuestionsStateImplToJson(
        _$QuestionsStateImpl instance) =>
    <String, dynamic>{
      'categoryQuestions': instance.categoryQuestions,
      'categoryUserAnswers': instance.categoryUserAnswers.map(
          (k, e) => MapEntry(k, e.map((k, e) => MapEntry(k.toString(), e)))),
      'categoryShownSolutions': instance.categoryShownSolutions.map(
          (k, e) => MapEntry(k, e.map((k, e) => MapEntry(k.toString(), e)))),
      'categoryList': instance.categoryList,
      'categoryId': instance.categoryId,
      'questionStatus': _$QuestionStatusEnumMap[instance.questionStatus]!,
    };

const _$QuestionStatusEnumMap = {
  QuestionStatus.initial: 'initial',
  QuestionStatus.loading: 'loading',
  QuestionStatus.fetchQuestion: 'fetchQuestion',
  QuestionStatus.error: 'error',
  QuestionStatus.answerQuestion: 'answerQuestion',
};
