import 'package:json_annotation/json_annotation.dart';

part 'onboarding.g.dart';

/// Represents the data structure for onboarding information.
///
/// This class encapsulates the overall onboarding data including the number of
/// pages and the details of each onboarding page.
@JsonSerializable()
class OnboardingDto {
  /// Constructs an [OnboardingDto].
  ///
  /// Requires a list of page details ([pages]).
  const OnboardingDto({required this.pages});

  /// Converts a JSON map to an instance of [OnboardingPageDto].
  factory OnboardingDto.fromJson(Map<String, dynamic> json) =>
      _$OnboardingDtoFromJson(json);

  /// A list of [OnboardingPageDto] objects representing each page in the
  /// onboarding.
  final List<OnboardingPageDto> pages;

  /// Converts an instance of [OnboardingDto] to a JSON map.
  Map<String, dynamic> toJson() => _$OnboardingDtoToJson(this);
}

/// Represents the details of a single onboarding page.
///
/// This class includes the title, description, and an SVG image path for an
/// onboarding page.
@JsonSerializable()
class OnboardingPageDto {
  /// Constructs an [OnboardingPageDto].
  ///
  /// Requires a title ([title]), a description ([description]), and an SVG
  /// image path ([svgImage]).
  const OnboardingPageDto({
    required this.title,
    required this.description,
    required this.svgImage,
  });

  /// Converts a JSON map to an instance of [OnboardingPageDto].
  factory OnboardingPageDto.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPageDtoFromJson(json);

  /// The title of the onboarding page.
  @JsonKey(name: 'title')
  final String title;

  /// A brief description of what the user will learn or experience on
  /// this page.
  @JsonKey(name: 'description')
  final String description;

  /// The path to the SVG image used in the onboarding page.
  @JsonKey(name: 'svg_image')
  final String svgImage;

  /// Converts an instance of [OnboardingPageDto] to a JSON map.
  Map<String, dynamic> toJson() => _$OnboardingPageDtoToJson(this);
}
