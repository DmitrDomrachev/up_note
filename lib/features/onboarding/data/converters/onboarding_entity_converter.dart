import 'package:up_note/core/data/converter/converter.dart';
import 'package:up_note/features/onboarding/data/dtos/onboarding.dart';
import 'package:up_note/features/onboarding/domain/entities/onboarding_entity.dart';

/// A typedef for converting [OnboardingEntity] to [OnboardingDto].
typedef IOnboardingEntityConverter = Converter<OnboardingEntity, OnboardingDto>;

/// A typedef for converting [OnboardingPageEntity] to [OnboardingPageDto].
typedef IOnboardingPageEntityConverter
    = Converter<OnboardingPageEntity, OnboardingPageDto>;

/// Converts [OnboardingDto] to [OnboardingEntity].
final class OnboardingEntityConverter extends IOnboardingEntityConverter {
  /// Constructs an [OnboardingEntityConverter].
  const OnboardingEntityConverter({
    required IOnboardingPageEntityConverter onboardingPageEntityConverter,
  }) : _onboardingPageEntityConverter = onboardingPageEntityConverter;

  final IOnboardingPageEntityConverter _onboardingPageEntityConverter;

  @override
  OnboardingEntity convert(OnboardingDto input) {
    final result = OnboardingEntity(
      pages:
          _onboardingPageEntityConverter.convertMultiple(input.pages).toList(),
    );
    return result;
  }
}

/// Converts [OnboardingPageDto] to [OnboardingPageEntity].
final class OnboardingPageEntityConverter
    extends IOnboardingPageEntityConverter {
  /// Constructs an [OnboardingPageEntityConverter].
  const OnboardingPageEntityConverter();
  @override
  OnboardingPageEntity convert(OnboardingPageDto input) {
    final result = OnboardingPageEntity(
      title: input.title,
      description: input.description,
      image: input.svgImage,
    );
    return result;
  }
}
