import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_entity.freezed.dart';
part 'onboarding_entity.g.dart';

/// Represents the onboarding process for the application.
@freezed
class OnboardingEntity with _$OnboardingEntity {
  /// Constructs an instance of [OnboardingEntity] with the given list of pages.
  factory OnboardingEntity({
    required List<OnboardingPageEntity> pages,
  }) = _Onboarding;

  /// Creates an instance of [OnboardingEntity] from a JSON map.
  ///
  /// The [json] parameter is a map that represents the JSON data.
  /// Returns an instance of [OnboardingEntity] with the values parsed
  /// from the JSON map.
  factory OnboardingEntity.fromJson(Map<String, dynamic> json) =>
      _$OnboardingEntityFromJson(json);

  const OnboardingEntity._();

  /// Returns the number of pages in the onboarding process.
  int get pagesLength => pages.length;
}

/// Represents an onboarding entity.
///
/// An onboarding entity contains information about a specific onboarding step,
/// including the title, description, and image associated with it.
@freezed
class OnboardingPageEntity with _$OnboardingPageEntity {
  /// Constructs an [OnboardingPageEntity].
  ///
  /// Requires a title ([title]), a description ([description]),
  /// and an image in svg format ([image]).
  factory OnboardingPageEntity({
    required String title,
    required String description,
    required String image,
  }) = _OnboardingEntity;

  /// Creates an [OnboardingPageEntity] instance from a JSON map.
  ///
  /// The [json] parameter is a map containing the JSON data.
  /// Returns an [OnboardingPageEntity] instance.
  factory OnboardingPageEntity.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPageEntityFromJson(json);
}
