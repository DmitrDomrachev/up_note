// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingImpl _$$OnboardingImplFromJson(Map<String, dynamic> json) =>
    _$OnboardingImpl(
      pages: (json['pages'] as List<dynamic>)
          .map((e) => OnboardingPageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OnboardingImplToJson(_$OnboardingImpl instance) =>
    <String, dynamic>{
      'pages': instance.pages,
    };

_$OnboardingEntityImpl _$$OnboardingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingEntityImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$OnboardingEntityImplToJson(
        _$OnboardingEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
    };
