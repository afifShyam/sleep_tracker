// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get answerType => throw _privateConstructorUsedError;
  List<String> get solutions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {String id,
      String question,
      List<String> answerType,
      List<String> solutions});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answerType = null,
    Object? solutions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      solutions: null == solutions
          ? _value.solutions
          : solutions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      List<String> answerType,
      List<String> solutions});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answerType = null,
    Object? solutions = null,
  }) {
    return _then(_$QuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerType: null == answerType
          ? _value._answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      solutions: null == solutions
          ? _value._solutions
          : solutions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl implements _QuestionModel {
  _$QuestionModelImpl(
      {required this.id,
      required this.question,
      required final List<String> answerType,
      required final List<String> solutions})
      : _answerType = answerType,
        _solutions = solutions;

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  final List<String> _answerType;
  @override
  List<String> get answerType {
    if (_answerType is EqualUnmodifiableListView) return _answerType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerType);
  }

  final List<String> _solutions;
  @override
  List<String> get solutions {
    if (_solutions is EqualUnmodifiableListView) return _solutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_solutions);
  }

  @override
  String toString() {
    return 'QuestionModel(id: $id, question: $question, answerType: $answerType, solutions: $solutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._answerType, _answerType) &&
            const DeepCollectionEquality()
                .equals(other._solutions, _solutions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      const DeepCollectionEquality().hash(_answerType),
      const DeepCollectionEquality().hash(_solutions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  factory _QuestionModel(
      {required final String id,
      required final String question,
      required final List<String> answerType,
      required final List<String> solutions}) = _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  List<String> get answerType;
  @override
  List<String> get solutions;
  @override
  @JsonKey(ignore: true)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SolutionModel _$SolutionModelFromJson(Map<String, dynamic> json) {
  return _SolutionModel.fromJson(json);
}

/// @nodoc
mixin _$SolutionModel {
  int get id => throw _privateConstructorUsedError;
  String get solution => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolutionModelCopyWith<SolutionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolutionModelCopyWith<$Res> {
  factory $SolutionModelCopyWith(
          SolutionModel value, $Res Function(SolutionModel) then) =
      _$SolutionModelCopyWithImpl<$Res, SolutionModel>;
  @useResult
  $Res call({int id, String solution});
}

/// @nodoc
class _$SolutionModelCopyWithImpl<$Res, $Val extends SolutionModel>
    implements $SolutionModelCopyWith<$Res> {
  _$SolutionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? solution = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolutionModelImplCopyWith<$Res>
    implements $SolutionModelCopyWith<$Res> {
  factory _$$SolutionModelImplCopyWith(
          _$SolutionModelImpl value, $Res Function(_$SolutionModelImpl) then) =
      __$$SolutionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String solution});
}

/// @nodoc
class __$$SolutionModelImplCopyWithImpl<$Res>
    extends _$SolutionModelCopyWithImpl<$Res, _$SolutionModelImpl>
    implements _$$SolutionModelImplCopyWith<$Res> {
  __$$SolutionModelImplCopyWithImpl(
      _$SolutionModelImpl _value, $Res Function(_$SolutionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? solution = null,
  }) {
    return _then(_$SolutionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SolutionModelImpl implements _SolutionModel {
  _$SolutionModelImpl({required this.id, required this.solution});

  factory _$SolutionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SolutionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String solution;

  @override
  String toString() {
    return 'SolutionModel(id: $id, solution: $solution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolutionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.solution, solution) ||
                other.solution == solution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, solution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SolutionModelImplCopyWith<_$SolutionModelImpl> get copyWith =>
      __$$SolutionModelImplCopyWithImpl<_$SolutionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SolutionModelImplToJson(
      this,
    );
  }
}

abstract class _SolutionModel implements SolutionModel {
  factory _SolutionModel(
      {required final int id,
      required final String solution}) = _$SolutionModelImpl;

  factory _SolutionModel.fromJson(Map<String, dynamic> json) =
      _$SolutionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get solution;
  @override
  @JsonKey(ignore: true)
  _$$SolutionModelImplCopyWith<_$SolutionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
