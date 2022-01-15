// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phrase.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhraseEntity _$PhraseEntityFromJson(Map<String, dynamic> json) {
  return _phraseEntity.fromJson(json);
}

/// @nodoc
class _$PhraseEntityTearOff {
  const _$PhraseEntityTearOff();

  _phraseEntity call(String text, String owner) {
    return _phraseEntity(
      text,
      owner,
    );
  }

  PhraseEntity fromJson(Map<String, Object?> json) {
    return PhraseEntity.fromJson(json);
  }
}

/// @nodoc
const $PhraseEntity = _$PhraseEntityTearOff();

/// @nodoc
mixin _$PhraseEntity {
  String get text => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhraseEntityCopyWith<PhraseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhraseEntityCopyWith<$Res> {
  factory $PhraseEntityCopyWith(
          PhraseEntity value, $Res Function(PhraseEntity) then) =
      _$PhraseEntityCopyWithImpl<$Res>;
  $Res call({String text, String owner});
}

/// @nodoc
class _$PhraseEntityCopyWithImpl<$Res> implements $PhraseEntityCopyWith<$Res> {
  _$PhraseEntityCopyWithImpl(this._value, this._then);

  final PhraseEntity _value;
  // ignore: unused_field
  final $Res Function(PhraseEntity) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$phraseEntityCopyWith<$Res>
    implements $PhraseEntityCopyWith<$Res> {
  factory _$phraseEntityCopyWith(
          _phraseEntity value, $Res Function(_phraseEntity) then) =
      __$phraseEntityCopyWithImpl<$Res>;
  @override
  $Res call({String text, String owner});
}

/// @nodoc
class __$phraseEntityCopyWithImpl<$Res> extends _$PhraseEntityCopyWithImpl<$Res>
    implements _$phraseEntityCopyWith<$Res> {
  __$phraseEntityCopyWithImpl(
      _phraseEntity _value, $Res Function(_phraseEntity) _then)
      : super(_value, (v) => _then(v as _phraseEntity));

  @override
  _phraseEntity get _value => super._value as _phraseEntity;

  @override
  $Res call({
    Object? text = freezed,
    Object? owner = freezed,
  }) {
    return _then(_phraseEntity(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_phraseEntity implements _phraseEntity {
  _$_phraseEntity(this.text, this.owner);

  factory _$_phraseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_phraseEntityFromJson(json);

  @override
  final String text;
  @override
  final String owner;

  @override
  String toString() {
    return 'PhraseEntity(text: $text, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _phraseEntity &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$phraseEntityCopyWith<_phraseEntity> get copyWith =>
      __$phraseEntityCopyWithImpl<_phraseEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_phraseEntityToJson(this);
  }
}

abstract class _phraseEntity implements PhraseEntity {
  factory _phraseEntity(String text, String owner) = _$_phraseEntity;

  factory _phraseEntity.fromJson(Map<String, dynamic> json) =
      _$_phraseEntity.fromJson;

  @override
  String get text;
  @override
  String get owner;
  @override
  @JsonKey(ignore: true)
  _$phraseEntityCopyWith<_phraseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
