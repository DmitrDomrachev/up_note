// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingEntity _$OnboardingEntityFromJson(Map<String, dynamic> json) {
  return _Onboarding.fromJson(json);
}

/// @nodoc
mixin _$OnboardingEntity {
  List<OnboardingPageEntity> get pages => throw _privateConstructorUsedError;

  /// Serializes this OnboardingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingEntityCopyWith<OnboardingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEntityCopyWith<$Res> {
  factory $OnboardingEntityCopyWith(
          OnboardingEntity value, $Res Function(OnboardingEntity) then) =
      _$OnboardingEntityCopyWithImpl<$Res, OnboardingEntity>;
  @useResult
  $Res call({List<OnboardingPageEntity> pages});
}

/// @nodoc
class _$OnboardingEntityCopyWithImpl<$Res, $Val extends OnboardingEntity>
    implements $OnboardingEntityCopyWith<$Res> {
  _$OnboardingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<OnboardingPageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingImplCopyWith<$Res>
    implements $OnboardingEntityCopyWith<$Res> {
  factory _$$OnboardingImplCopyWith(
          _$OnboardingImpl value, $Res Function(_$OnboardingImpl) then) =
      __$$OnboardingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OnboardingPageEntity> pages});
}

/// @nodoc
class __$$OnboardingImplCopyWithImpl<$Res>
    extends _$OnboardingEntityCopyWithImpl<$Res, _$OnboardingImpl>
    implements _$$OnboardingImplCopyWith<$Res> {
  __$$OnboardingImplCopyWithImpl(
      _$OnboardingImpl _value, $Res Function(_$OnboardingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_$OnboardingImpl(
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<OnboardingPageEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingImpl extends _Onboarding {
  _$OnboardingImpl({required final List<OnboardingPageEntity> pages})
      : _pages = pages,
        super._();

  factory _$OnboardingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingImplFromJson(json);

  final List<OnboardingPageEntity> _pages;
  @override
  List<OnboardingPageEntity> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'OnboardingEntity(pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingImpl &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pages));

  /// Create a copy of OnboardingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingImplCopyWith<_$OnboardingImpl> get copyWith =>
      __$$OnboardingImplCopyWithImpl<_$OnboardingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingImplToJson(
      this,
    );
  }
}

abstract class _Onboarding extends OnboardingEntity {
  factory _Onboarding({required final List<OnboardingPageEntity> pages}) =
      _$OnboardingImpl;
  _Onboarding._() : super._();

  factory _Onboarding.fromJson(Map<String, dynamic> json) =
      _$OnboardingImpl.fromJson;

  @override
  List<OnboardingPageEntity> get pages;

  /// Create a copy of OnboardingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingImplCopyWith<_$OnboardingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OnboardingPageEntity _$OnboardingPageEntityFromJson(Map<String, dynamic> json) {
  return _OnboardingEntity.fromJson(json);
}

/// @nodoc
mixin _$OnboardingPageEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this OnboardingPageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingPageEntityCopyWith<OnboardingPageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPageEntityCopyWith<$Res> {
  factory $OnboardingPageEntityCopyWith(OnboardingPageEntity value,
          $Res Function(OnboardingPageEntity) then) =
      _$OnboardingPageEntityCopyWithImpl<$Res, OnboardingPageEntity>;
  @useResult
  $Res call({String title, String description, String image});
}

/// @nodoc
class _$OnboardingPageEntityCopyWithImpl<$Res,
        $Val extends OnboardingPageEntity>
    implements $OnboardingPageEntityCopyWith<$Res> {
  _$OnboardingPageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingEntityImplCopyWith<$Res>
    implements $OnboardingPageEntityCopyWith<$Res> {
  factory _$$OnboardingEntityImplCopyWith(_$OnboardingEntityImpl value,
          $Res Function(_$OnboardingEntityImpl) then) =
      __$$OnboardingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String image});
}

/// @nodoc
class __$$OnboardingEntityImplCopyWithImpl<$Res>
    extends _$OnboardingPageEntityCopyWithImpl<$Res, _$OnboardingEntityImpl>
    implements _$$OnboardingEntityImplCopyWith<$Res> {
  __$$OnboardingEntityImplCopyWithImpl(_$OnboardingEntityImpl _value,
      $Res Function(_$OnboardingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$OnboardingEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingEntityImpl implements _OnboardingEntity {
  _$OnboardingEntityImpl(
      {required this.title, required this.description, required this.image});

  factory _$OnboardingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingEntityImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString() {
    return 'OnboardingPageEntity(title: $title, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, image);

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingEntityImplCopyWith<_$OnboardingEntityImpl> get copyWith =>
      __$$OnboardingEntityImplCopyWithImpl<_$OnboardingEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingEntityImplToJson(
      this,
    );
  }
}

abstract class _OnboardingEntity implements OnboardingPageEntity {
  factory _OnboardingEntity(
      {required final String title,
      required final String description,
      required final String image}) = _$OnboardingEntityImpl;

  factory _OnboardingEntity.fromJson(Map<String, dynamic> json) =
      _$OnboardingEntityImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get image;

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingEntityImplCopyWith<_$OnboardingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
