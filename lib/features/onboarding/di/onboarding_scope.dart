import 'package:up_note/features/app/di/app_scope.dart';
import 'package:up_note/features/onboarding/data/converters/onboarding_entity_converter.dart';
import 'package:up_note/features/onboarding/data/data_source/mysql_onboarding_datasource.dart';
import 'package:up_note/features/onboarding/data/repositories/onboarding_repository.dart';
import 'package:up_note/features/onboarding/domain/repositories/i_onboarding_repository.dart';

/// Onboarding feature dependencies.
abstract interface class IOnboardingScope {
  /// Returns the onboarding repository.
  IOnboardingRepository get onboardingRepository;
}

/// Scope of dependencies which need through all onboarding feature's life.
class OnboardingScope implements IOnboardingScope {
  /// Create an instance [OnboardingScope].
  OnboardingScope(IAppScope appScope) {
    _onboardingRepository = OnboardingRepository(
      dataSource: MysqlOnboardingDatasource(pool: appScope.mySQLConnectionPool),
      onboardingEntityConverter: const OnboardingEntityConverter(
        onboardingPageEntityConverter: OnboardingPageEntityConverter(),
      ),
    );
  }

  late final IOnboardingRepository _onboardingRepository;

  @override
  IOnboardingRepository get onboardingRepository => _onboardingRepository;
}
