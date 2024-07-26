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
  List<QuestionModel> get questions => throw _privateConstructorUsedError;
  Map<int, int?> get userAnswers =>
      throw _privateConstructorUsedError; // Map of question index to selected option index
  Map<int, List<String?>> get shownSolutions =>
      throw _privateConstructorUsedError; // Map of question index to shown solutions
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
      {List<QuestionModel> questions,
      Map<int, int?> userAnswers,
      Map<int, List<String?>> shownSolutions,
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
    Object? questions = null,
    Object? userAnswers = null,
    Object? shownSolutions = null,
    Object? questionStatus = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      userAnswers: null == userAnswers
          ? _value.userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
      shownSolutions: null == shownSolutions
          ? _value.shownSolutions
          : shownSolutions // ignore: cast_nullable_to_non_nullable
              as Map<int, List<String?>>,
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
      {List<QuestionModel> questions,
      Map<int, int?> userAnswers,
      Map<int, List<String?>> shownSolutions,
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
    Object? questions = null,
    Object? userAnswers = null,
    Object? shownSolutions = null,
    Object? questionStatus = null,
  }) {
    return _then(_$QuestionsStateImpl(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      userAnswers: null == userAnswers
          ? _value._userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
      shownSolutions: null == shownSolutions
          ? _value._shownSolutions
          : shownSolutions // ignore: cast_nullable_to_non_nullable
              as Map<int, List<String?>>,
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
      {required final List<QuestionModel> questions,
      required final Map<int, int?> userAnswers,
      required final Map<int, List<String?>> shownSolutions,
      required this.questionStatus})
      : _questions = questions,
        _userAnswers = userAnswers,
        _shownSolutions = shownSolutions;

  factory _$QuestionsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsStateImplFromJson(json);

  final List<QuestionModel> _questions;
  @override
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final Map<int, int?> _userAnswers;
  @override
  Map<int, int?> get userAnswers {
    if (_userAnswers is EqualUnmodifiableMapView) return _userAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userAnswers);
  }

// Map of question index to selected option index
  final Map<int, List<String?>> _shownSolutions;
// Map of question index to selected option index
  @override
  Map<int, List<String?>> get shownSolutions {
    if (_shownSolutions is EqualUnmodifiableMapView) return _shownSolutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_shownSolutions);
  }

// Map of question index to shown solutions
  @override
  final QuestionStatus questionStatus;

  @override
  String toString() {
    return 'QuestionsState(questions: $questions, userAnswers: $userAnswers, shownSolutions: $shownSolutions, questionStatus: $questionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._userAnswers, _userAnswers) &&
            const DeepCollectionEquality()
                .equals(other._shownSolutions, _shownSolutions) &&
            (identical(other.questionStatus, questionStatus) ||
                other.questionStatus == questionStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_userAnswers),
      const DeepCollectionEquality().hash(_shownSolutions),
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
      {required final List<QuestionModel> questions,
      required final Map<int, int?> userAnswers,
      required final Map<int, List<String?>> shownSolutions,
      required final QuestionStatus questionStatus}) = _$QuestionsStateImpl;

  factory _QuestionsState.fromJson(Map<String, dynamic> json) =
      _$QuestionsStateImpl.fromJson;

  @override
  List<QuestionModel> get questions;
  @override
  Map<int, int?> get userAnswers;
  @override // Map of question index to selected option index
  Map<int, List<String?>> get shownSolutions;
  @override // Map of question index to shown solutions
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
    required TResult Function(int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(int questionIndex, List<String?> solutions)
        showSolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(int questionIndex, List<String?> solutions)? showSolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(int questionIndex, List<String?> solutions)? showSolution,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ResetStatus value) resetStatus,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(ShowSolution value) showSolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ResetStatus value)? resetStatus,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(ShowSolution value)? showSolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ResetStatus value)? resetStatus,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(ShowSolution value)? showSolution,
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
    required TResult Function(int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(int questionIndex, List<String?> solutions)
        showSolution,
  }) {
    return getQuestions(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(int questionIndex, List<String?> solutions)? showSolution,
  }) {
    return getQuestions?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(int questionIndex, List<String?> solutions)? showSolution,
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
    required TResult Function(int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(int questionIndex, List<String?> solutions)
        showSolution,
  }) {
    return resetStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(int questionIndex, List<String?> solutions)? showSolution,
  }) {
    return resetStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(int questionIndex, List<String?> solutions)? showSolution,
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
  $Res call({int questionIndex, int selectedOptionIndex});
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
    Object? questionIndex = null,
    Object? selectedOptionIndex = null,
  }) {
    return _then(_$AnswerQuestionImpl(
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
  const _$AnswerQuestionImpl(this.questionIndex, this.selectedOptionIndex);

  @override
  final int questionIndex;
  @override
  final int selectedOptionIndex;

  @override
  String toString() {
    return 'QuestionsEvent.answerQuestion(questionIndex: $questionIndex, selectedOptionIndex: $selectedOptionIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerQuestionImpl &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            (identical(other.selectedOptionIndex, selectedOptionIndex) ||
                other.selectedOptionIndex == selectedOptionIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, questionIndex, selectedOptionIndex);

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
    required TResult Function(int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(int questionIndex, List<String?> solutions)
        showSolution,
  }) {
    return answerQuestion(questionIndex, selectedOptionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(int questionIndex, List<String?> solutions)? showSolution,
  }) {
    return answerQuestion?.call(questionIndex, selectedOptionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(int questionIndex, List<String?> solutions)? showSolution,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(questionIndex, selectedOptionIndex);
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
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(this);
    }
    return orElse();
  }
}

abstract class AnswerQuestion implements QuestionsEvent {
  const factory AnswerQuestion(
          final int questionIndex, final int selectedOptionIndex) =
      _$AnswerQuestionImpl;

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
  $Res call({int questionIndex, List<String?> solutions});
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
    Object? questionIndex = null,
    Object? solutions = null,
  }) {
    return _then(_$ShowSolutionImpl(
      null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == solutions
          ? _value._solutions
          : solutions // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$ShowSolutionImpl implements ShowSolution {
  const _$ShowSolutionImpl(this.questionIndex, final List<String?> solutions)
      : _solutions = solutions;

  @override
  final int questionIndex;
  final List<String?> _solutions;
  @override
  List<String?> get solutions {
    if (_solutions is EqualUnmodifiableListView) return _solutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_solutions);
  }

  @override
  String toString() {
    return 'QuestionsEvent.showSolution(questionIndex: $questionIndex, solutions: $solutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSolutionImpl &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            const DeepCollectionEquality()
                .equals(other._solutions, _solutions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionIndex,
      const DeepCollectionEquality().hash(_solutions));

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
    required TResult Function(int questionIndex, int selectedOptionIndex)
        answerQuestion,
    required TResult Function(int questionIndex, List<String?> solutions)
        showSolution,
  }) {
    return showSolution(questionIndex, solutions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? getQuestions,
    TResult? Function()? resetStatus,
    TResult? Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult? Function(int questionIndex, List<String?> solutions)? showSolution,
  }) {
    return showSolution?.call(questionIndex, solutions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? getQuestions,
    TResult Function()? resetStatus,
    TResult Function(int questionIndex, int selectedOptionIndex)?
        answerQuestion,
    TResult Function(int questionIndex, List<String?> solutions)? showSolution,
    required TResult orElse(),
  }) {
    if (showSolution != null) {
      return showSolution(questionIndex, solutions);
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
    required TResult orElse(),
  }) {
    if (showSolution != null) {
      return showSolution(this);
    }
    return orElse();
  }
}

abstract class ShowSolution implements QuestionsEvent {
  const factory ShowSolution(
          final int questionIndex, final List<String?> solutions) =
      _$ShowSolutionImpl;

  int get questionIndex;
  List<String?> get solutions;
  @JsonKey(ignore: true)
  _$$ShowSolutionImplCopyWith<_$ShowSolutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
