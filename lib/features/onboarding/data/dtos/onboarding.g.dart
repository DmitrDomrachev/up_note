// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnboardingDto _$OnboardingDtoFromJson(Map<String, dynamic> json) =>
    OnboardingDto(
      pages: (json['pages'] as List<dynamic>)
          .map((e) => OnboardingPageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OnboardingDtoToJson(OnboardingDto instance) =>
    <String, dynamic>{
      'pages': instance.pages,
    };

OnboardingPageDto _$OnboardingPageDtoFromJson(Map<String, dynamic> json) =>
    OnboardingPageDto(
      title: json['title'] as String,
      description: json['description'] as String,
      svgImage: json['svg_image'] as String,
    );

Map<String, dynamic> _$OnboardingPageDtoToJson(OnboardingPageDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'svg_image': instance.svgImage,
    };
