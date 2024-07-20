// ignore_for_file: one_member_abstracts
import 'package:up_note/features/onboarding/domain/entities/onboarding_entity.dart';

/// The interface for the Onboarding repository.
///
/// This interface defines the contract for retrieving OnboardingEntity.
abstract interface class IOnboardingRepository {
  /// Retrieves the OnboardingEntity.
  ///
  /// Returns a [Future] that completes with the OnboardingEntity.
  Future<OnboardingEntity> getOnboarding();
}
