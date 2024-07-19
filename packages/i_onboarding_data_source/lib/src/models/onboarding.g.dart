// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnboardingDto _$OnboardingDtoFromJson(Map<String, dynamic> json) => OnboardingDto(
      pagesLength: (json['pagesLength'] as num).toInt(),
      pages: (json['pages'] as List<dynamic>)
          .map((e) => OnboardingPageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OnboardingDtoToJson(OnboardingDto instance) => <String, dynamic>{
      'pagesLength': instance.pagesLength,
      'pages': instance.pages,
    };

OnboardingPageDto _$OnboardingPageDtoFromJson(Map<String, dynamic> json) => OnboardingPageDto(
      title: json['title'] as String,
      description: json['description'] as String,
      svgImage: json['svgImage'] as String,
    );

Map<String, dynamic> _$OnboardingPageDtoToJson(OnboardingPageDto instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'svgImage': instance.svgImage,
    };
