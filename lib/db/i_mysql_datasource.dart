// ignore_for_file: one_member_abstracts

import 'package:up_note/features/onboarding/data/dtos/onboarding.dart';

/// This is an interface for the MySQL data source.
abstract interface class IMysqlDataSource {
  /// Retrieves the onboarding data from the data source.
  ///
  /// Returns a [Future] that resolves to an [OnboardingDto] object.
  Future<OnboardingDto> getOnboarding();
}
