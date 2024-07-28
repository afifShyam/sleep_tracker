// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionsState _$QuestionsStateFromJson(Map<String, dynamic> json) {
  return _QuestionsState.fromJson(json);
}

/// @nodoc
mixin _$QuestionsState {
  Map<String, List<QuestionModel>> get categoryQuestions =>
      throw _privateConstructorUsedError;
  Map<String, Map<int, int?>> get categoryUserAnswers =>
      throw _privateConstructorUsedError;
  Map<String, Map<int, List<String?>>> get categoryShownSolutions =>
      throw _privateConstructorUsedError;
  List<String> get categoryList => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  QuestionStatus get questionStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsStateCopyWith<QuestionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsStateCopyWith<$Res> {
  factory $QuestionsStateCopyWith(
          QuestionsState value, $Res Function(QuestionsState) then) =
      _$QuestionsStateCopyWithImpl<$Res, QuestionsState>;
  @useResult
  $Res call(
      {Map<String, List<QuestionModel>> categoryQuestions,
      Map<String, Map<int, int?>> categoryUserAnswers,
      Map<String, Map<int, List<String?>>> categoryShownSolutions,
      List<String> categoryList,
      String categoryId,
      QuestionStatus questionStatus});
}

/// @nodoc
class _$QuestionsStateCopyWithImpl<$Res, $Val extends QuestionsState>
    implements $QuestionsStateCopyWith<$Res> {
  _$QuestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryQuestions = null,
    Object? categoryUserAnswers = null,
    Object? categoryShownSolutions = null,
    Object? categoryList = null,
    Object? categoryId = null,
    Object? questionStatus = null,
  }) {
    return _then(_value.copyWith(
      categoryQuestions: null == categoryQuestions
          ? _value.categoryQuestions
          : categoryQuestions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<QuestionModel>>,
      categoryUserAnswers: null == categoryUserAnswers
          ? _value.categoryUserAnswers
          : categoryUserAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<int, int?>>,
      categoryShownSolutions: null == categoryShownSolutions
          ? _value.categoryShownSolutions
          : categoryShownSolutions // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<int, List<String?>>>,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      questionStatus: null == questionStatus
          ? _value.questionStatus
          : questionStatus // ignore: cast_nullable_to_non_nullable
              as QuestionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsStateImplCopyWith<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  factory _$$QuestionsStateImplCopyWith(_$QuestionsStateImpl value,
          $Res Function(_$QuestionsStateImpl) then) =
      __$$QuestionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<QuestionModel>> categoryQuestions,
      Map<String, Map<int, int?>> categoryUserAnswers,
      Map<String, Map<int, List<String?>>> categoryShownSolutions,
      List<String> categoryList,
      String categoryId,
      QuestionStatus questionStatus});
}

/// @nodoc
class __$$QuestionsStateImplCopyWithImpl<$Res>
    extends _$QuestionsStateCopyWithImpl<$Res, _$QuestionsStateImpl>
    implements _$$QuestionsStateImplCopyWith<$Res> {
  __$$QuestionsStateImplCopyWithImpl(
      _$QuestionsStateImpl _value, $Res Function(_$QuestionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryQuestions = null,
    Object? categoryUserAnswers = null,
    Object? categoryShownSolutions = null,
    Object? categoryList = null,
    Object? categoryId = null,
    Object? questionStatus = null,
  }) {
    return _then(_$QuestionsStateImpl(
      categoryQuestions: null == categoryQuestions
          ? _value._categoryQuestions
          : categoryQuestions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<QuestionModel>>,
      categoryUserAnswers: null == categoryUserAnswers
          ? _value._categoryUserAnswers
          : categoryUserAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<int, int?>>,
      categoryShownSolutions: null == categoryShownSolutions
          ? _value._categoryShownSolutions
          : categoryShownSolutions // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<int, List<String?>>>,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      questionStatus: null == questionStatus
          ? _value.questionStatus
          : questionStatus // ignore: cast_nullable_to_non_nullable
              as QuestionStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsStateImpl implements _QuestionsState {
  const _$QuestionsStateImpl(
      {required final Map<String, List<QuestionModel>> categoryQuestions,
      required final Map<String, Map<int, int?>> categoryUserAnswers,
      required final Map<String, Map<int, List<String?>>>
          categoryShownSolutions,
      required final List<String> categoryList,
      required this.categoryId,
      required this.questionStatus})
      : _categoryQuestions = categoryQuestions,
        _categoryUserAnswers = categoryUserAnswers,
        _categoryShownSolutions = categoryShownSolutions,
        _categoryList = categoryList;

  factory _$QuestionsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsStateImplFromJson(json);

  final Map<String, List<QuestionModel>> _categoryQuestions;
  @override
  Map<String, List<QuestionModel>> get categoryQuestions {
    if (_categoryQuestions is EqualUnmodifiableMapView)
      return _categoryQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryQuestions);
  }

  final Map<String, Map<int, int?>> _categoryUserAnswers;
  @override
  Map<String, Map<int, int?>> get categoryUserAnswers {
    if (_categoryUserAnswers is EqualUnmodifiableMapView)
      return _categoryUserAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryUserAnswers);
  }

  final Map<String, Map<int, List<String?>>> _categoryShownSolutions;
  @override
  Map<String, Map<int, List<String?>>> get categoryShownSolutions {
    if (_categoryShownSolutions is EqualUnmodifiableMapView)
      return _categoryShownSolutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryShownSolutions);
  }

  final List<String> _categoryList;
  @override
  List<String> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final String categoryId;
  @override
  final QuestionStatus questionStatus;

  @override
  String toString() {
    return 'QuestionsState(categoryQuestions: $categoryQuestions, categoryUserAnswers: $categoryUserAnswers, categoryShownSolutions: $categoryShownSolutions, categoryList: $categoryList, categoryId: $categoryId, questionStatus: $questionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryQuestions, _categoryQuestions) &&
            const DeepCollectionEquality()
                .equals(other._categoryUserAnswers, _categoryUserAnswers) &&
            const DeepCollectionEquality().equals(
                other._categoryShownSolutions, _categoryShownSolutions) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.questionStatus, questionStatus) ||
                other.questionStatus == questionStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryQuestions),
      const DeepCollectionEquality().hash(_categoryUserAnswers),
      const DeepCollectionEquality().hash(_categoryShownSolutions),
      const DeepCollectionEquality().hash(_categoryList),
      categoryId,
      questionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      __$$QuestionsStateImplCopyWithImpl<_$QuestionsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsStateImplToJson(
      this,
    );
  }
}

abstract class _QuestionsState implements QuestionsState {
  const factory _QuestionsState(
      {required final Map<String, List<QuestionModel>> categoryQuestions,
      required final Map<String, Map<int, int?>> categoryUserAnswers,
      required final Map<String, Map<int, List<String?>>>
          categoryShownSolutions,
      required final List<String> categoryList,
      required final String categoryId,
      required final QuestionStatus questionStatus}) = _$QuestionsStateImpl;

  factory _QuestionsState.fromJson(Map<String, dynamic> json) =
      _$QuestionsStateImpl.fromJson;

  @override
  Map<String, List<QuestionModel>> get categoryQuestions;
  @override
  Map<String, Map<int, int?>> get categoryUserAnswers;
  @override
  Map<String, Map<int, List<String?>>> get categoryShownSolutions;
  @override
  List<String> get categoryList;
  @override
  String get categoryId;
  @override
  QuestionStatus get questionStatus;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) getQuestions,
    required TResult Function() resetStatus,
    required TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(
            String categoryId, int questionIndex, List<String?> solution)
        showSolution,
    required TResult Function() getCategoryList,
    required TResult Function(String categoryId) getCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult? Function()? getCategoryList,
    TResult? Function(String categoryId)? getCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult Function()? getCategoryList,
    TResult Function(String categoryId)? getCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(GetCategoryId value) getCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(GetCategoryId value)? getCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(GetCategoryId value)? getCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsEventCopyWith<$Res> {
  factory $QuestionsEventCopyWith(
          QuestionsEvent value, $Res Function(QuestionsEvent) then) =
      _$QuestionsEventCopyWithImpl<$Res, QuestionsEvent>;
}

/// @nodoc
class _$QuestionsEventCopyWithImpl<$Res, $Val extends QuestionsEvent>
    implements $QuestionsEventCopyWith<$Res> {
  _$QuestionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetQuestionsImplCopyWith<$Res> {
  factory _$$GetQuestionsImplCopyWith(
          _$GetQuestionsImpl value, $Res Function(_$GetQuestionsImpl) then) =
      __$$GetQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$GetQuestionsImplCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res, _$GetQuestionsImpl>
    implements _$$GetQuestionsImplCopyWith<$Res> {
  __$$GetQuestionsImplCopyWithImpl(
      _$GetQuestionsImpl _value, $Res Function(_$GetQuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetQuestionsImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetQuestionsImpl implements GetQuestions {
  const _$GetQuestionsImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'QuestionsEvent.getQuestions(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      __$$GetQuestionsImplCopyWithImpl<_$GetQuestionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) getQuestions,
    required TResult Function() resetStatus,
    required TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(
            String categoryId, int questionIndex, List<String?> solution)
        showSolution,
    required TResult Function() getCategoryList,
    required TResult Function(String categoryId) getCategoryId,
  }) {
    return getQuestions(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult? Function()? getCategoryList,
    TResult? Function(String categoryId)? getCategoryId,
  }) {
    return getQuestions?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult Function()? getCategoryList,
    TResult Function(String categoryId)? getCategoryId,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(GetCategoryId value) getCategoryId,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(GetCategoryId value)? getCategoryId,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(GetCategoryId value)? getCategoryId,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class GetQuestions implements QuestionsEvent {
  const factory GetQuestions(final String categoryId) = _$GetQuestionsImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStatusImplCopyWith<$Res> {
  factory _$$ResetStatusImplCopyWith(
          _$ResetStatusImpl value, $Res Function(_$ResetStatusImpl) then) =
      __$$ResetStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStatusImplCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res, _$ResetStatusImpl>
    implements _$$ResetStatusImplCopyWith<$Res> {
  __$$ResetStatusImplCopyWithImpl(
      _$ResetStatusImpl _value, $Res Function(_$ResetStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStatusImpl implements ResetStatus {
  const _$ResetStatusImpl();

  @override
  String toString() {
    return 'QuestionsEvent.resetStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) getQuestions,
    required TResult Function() resetStatus,
    required TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(
            String categoryId, int questionIndex, List<String?> solution)
        showSolution,
    required TResult Function() getCategoryList,
    required TResult Function(String categoryId) getCategoryId,
  }) {
    return resetStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult? Function()? getCategoryList,
    TResult? Function(String categoryId)? getCategoryId,
  }) {
    return resetStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult Function()? getCategoryList,
    TResult Function(String categoryId)? getCategoryId,
    required TResult orElse(),
  }) {
    if (resetStatus != null) {
      return resetStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(GetCategoryId value) getCategoryId,
  }) {
    return resetStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(GetCategoryId value)? getCategoryId,
  }) {
    return resetStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(GetCategoryId value)? getCategoryId,
    required TResult orElse(),
  }) {
    if (resetStatus != null) {
      return resetStatus(this);
    }
    return orElse();
  }
}

abstract class ResetStatus implements QuestionsEvent {
  const factory ResetStatus() = _$ResetStatusImpl;
}

/// @nodoc
abstract class _$$AnswerQuestionImplCopyWith<$Res> {
  factory _$$AnswerQuestionImplCopyWith(_$AnswerQuestionImpl value,
          $Res Function(_$AnswerQuestionImpl) then) =
      __$$AnswerQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId, int questionIndex, int selectedOptionIndex});
}

/// @nodoc
class __$$AnswerQuestionImplCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res, _$AnswerQuestionImpl>
    implements _$$AnswerQuestionImplCopyWith<$Res> {
  __$$AnswerQuestionImplCopyWithImpl(
      _$AnswerQuestionImpl _value, $Res Function(_$AnswerQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? questionIndex = null,
    Object? selectedOptionIndex = null,
  }) {
    return _then(_$AnswerQuestionImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == selectedOptionIndex
          ? _value.selectedOptionIndex
          : selectedOptionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AnswerQuestionImpl implements AnswerQuestion {
  const _$AnswerQuestionImpl(
      this.categoryId, this.questionIndex, this.selectedOptionIndex);

  @override
  final String categoryId;
  @override
  final int questionIndex;
  @override
  final int selectedOptionIndex;

  @override
  String toString() {
    return 'QuestionsEvent.answerQuestion(categoryId: $categoryId, questionIndex: $questionIndex, selectedOptionIndex: $selectedOptionIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerQuestionImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            (identical(other.selectedOptionIndex, selectedOptionIndex) ||
                other.selectedOptionIndex == selectedOptionIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, questionIndex, selectedOptionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      __$$AnswerQuestionImplCopyWithImpl<_$AnswerQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) getQuestions,
    required TResult Function() resetStatus,
    required TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(
            String categoryId, int questionIndex, List<String?> solution)
        showSolution,
    required TResult Function() getCategoryList,
    required TResult Function(String categoryId) getCategoryId,
  }) {
    return answerQuestion(categoryId, questionIndex, selectedOptionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult? Function()? getCategoryList,
    TResult? Function(String categoryId)? getCategoryId,
  }) {
    return answerQuestion?.call(categoryId, questionIndex, selectedOptionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult Function()? getCategoryList,
    TResult Function(String categoryId)? getCategoryId,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(categoryId, questionIndex, selectedOptionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(GetCategoryId value) getCategoryId,
  }) {
    return answerQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(GetCategoryId value)? getCategoryId,
  }) {
    return answerQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(GetCategoryId value)? getCategoryId,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(this);
    }
    return orElse();
  }
}

abstract class AnswerQuestion implements QuestionsEvent {
  const factory AnswerQuestion(final String categoryId, final int questionIndex,
      final int selectedOptionIndex) = _$AnswerQuestionImpl;

  String get categoryId;
  int get questionIndex;
  int get selectedOptionIndex;
  @JsonKey(ignore: true)
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSolutionImplCopyWith<$Res> {
  factory _$$ShowSolutionImplCopyWith(
          _$ShowSolutionImpl value, $Res Function(_$ShowSolutionImpl) then) =
      __$$ShowSolutionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId, int questionIndex, List<String?> solution});
}

/// @nodoc
class __$$ShowSolutionImplCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res, _$ShowSolutionImpl>
    implements _$$ShowSolutionImplCopyWith<$Res> {
  __$$ShowSolutionImplCopyWithImpl(
      _$ShowSolutionImpl _value, $Res Function(_$ShowSolutionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? questionIndex = null,
    Object? solution = null,
  }) {
    return _then(_$ShowSolutionImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == solution
          ? _value._solution
          : solution // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$ShowSolutionImpl implements ShowSolution {
  const _$ShowSolutionImpl(
      this.categoryId, this.questionIndex, final List<String?> solution)
      : _solution = solution;

  @override
  final String categoryId;
  @override
  final int questionIndex;
  final List<String?> _solution;
  @override
  List<String?> get solution {
    if (_solution is EqualUnmodifiableListView) return _solution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_solution);
  }

  @override
  String toString() {
    return 'QuestionsEvent.showSolution(categoryId: $categoryId, questionIndex: $questionIndex, solution: $solution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSolutionImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            const DeepCollectionEquality().equals(other._solution, _solution));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, questionIndex,
      const DeepCollectionEquality().hash(_solution));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSolutionImplCopyWith<_$ShowSolutionImpl> get copyWith =>
      __$$ShowSolutionImplCopyWithImpl<_$ShowSolutionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) getQuestions,
    required TResult Function() resetStatus,
    required TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(
            String categoryId, int questionIndex, List<String?> solution)
        showSolution,
    required TResult Function() getCategoryList,
    required TResult Function(String categoryId) getCategoryId,
  }) {
    return showSolution(categoryId, questionIndex, solution);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult? Function()? getCategoryList,
    TResult? Function(String categoryId)? getCategoryId,
  }) {
    return showSolution?.call(categoryId, questionIndex, solution);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult Function()? getCategoryList,
    TResult Function(String categoryId)? getCategoryId,
    required TResult orElse(),
  }) {
    if (showSolution != null) {
      return showSolution(categoryId, questionIndex, solution);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(GetCategoryId value) getCategoryId,
  }) {
    return showSolution(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(GetCategoryId value)? getCategoryId,
  }) {
    return showSolution?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(GetCategoryId value)? getCategoryId,
    required TResult orElse(),
  }) {
    if (showSolution != null) {
      return showSolution(this);
    }
    return orElse();
  }
}

abstract class ShowSolution implements QuestionsEvent {
  const factory ShowSolution(final String categoryId, final int questionIndex,
      final List<String?> solution) = _$ShowSolutionImpl;

  String get categoryId;
  int get questionIndex;
  List<String?> get solution;
  @JsonKey(ignore: true)
  _$$ShowSolutionImplCopyWith<_$ShowSolutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryListImplCopyWith<$Res> {
  factory _$$GetCategoryListImplCopyWith(_$GetCategoryListImpl value,
          $Res Function(_$GetCategoryListImpl) then) =
      __$$GetCategoryListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoryListImplCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res, _$GetCategoryListImpl>
    implements _$$GetCategoryListImplCopyWith<$Res> {
  __$$GetCategoryListImplCopyWithImpl(
      _$GetCategoryListImpl _value, $Res Function(_$GetCategoryListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoryListImpl implements GetCategoryList {
  const _$GetCategoryListImpl();

  @override
  String toString() {
    return 'QuestionsEvent.getCategoryList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoryListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) getQuestions,
    required TResult Function() resetStatus,
    required TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(
            String categoryId, int questionIndex, List<String?> solution)
        showSolution,
    required TResult Function() getCategoryList,
    required TResult Function(String categoryId) getCategoryId,
  }) {
    return getCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult? Function()? getCategoryList,
    TResult? Function(String categoryId)? getCategoryId,
  }) {
    return getCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult Function()? getCategoryList,
    TResult Function(String categoryId)? getCategoryId,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(GetCategoryId value) getCategoryId,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(GetCategoryId value)? getCategoryId,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(GetCategoryId value)? getCategoryId,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetCategoryList implements QuestionsEvent {
  const factory GetCategoryList() = _$GetCategoryListImpl;
}

/// @nodoc
abstract class _$$GetCategoryIdImplCopyWith<$Res> {
  factory _$$GetCategoryIdImplCopyWith(
          _$GetCategoryIdImpl value, $Res Function(_$GetCategoryIdImpl) then) =
      __$$GetCategoryIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$GetCategoryIdImplCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res, _$GetCategoryIdImpl>
    implements _$$GetCategoryIdImplCopyWith<$Res> {
  __$$GetCategoryIdImplCopyWithImpl(
      _$GetCategoryIdImpl _value, $Res Function(_$GetCategoryIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetCategoryIdImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoryIdImpl implements GetCategoryId {
  const _$GetCategoryIdImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'QuestionsEvent.getCategoryId(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryIdImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryIdImplCopyWith<_$GetCategoryIdImpl> get copyWith =>
      __$$GetCategoryIdImplCopyWithImpl<_$GetCategoryIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) getQuestions,
    required TResult Function() resetStatus,
    required TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(
            String categoryId, int questionIndex, List<String?> solution)
        showSolution,
    required TResult Function() getCategoryList,
    required TResult Function(String categoryId) getCategoryId,
  }) {
    return getCategoryId(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult? Function()? getCategoryList,
    TResult? Function(String categoryId)? getCategoryId,
  }) {
    return getCategoryId?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(
            String categoryId, int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(
            String categoryId, int questionIndex, List<String?> solution)?
        showSolution,
    TResult Function()? getCategoryList,
    TResult Function(String categoryId)? getCategoryId,
    required TResult orElse(),
  }) {
    if (getCategoryId != null) {
      return getCategoryId(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(GetCategoryId value) getCategoryId,
  }) {
    return getCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(GetCategoryId value)? getCategoryId,
  }) {
    return getCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(GetCategoryId value)? getCategoryId,
    required TResult orElse(),
  }) {
    if (getCategoryId != null) {
      return getCategoryId(this);
    }
    return orElse();
  }
}

abstract class GetCategoryId implements QuestionsEvent {
  const factory GetCategoryId(final String categoryId) = _$GetCategoryIdImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$GetCategoryIdImplCopyWith<_$GetCategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
