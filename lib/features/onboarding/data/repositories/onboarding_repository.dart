import 'package:up_note/features/onboarding/data/converters/onboarding_entity_converter.dart';
import 'package:up_note/features/onboarding/data/data_source/onboarding_datasource.dart';
import 'package:up_note/features/onboarding/domain/entities/onboarding_entity.dart';
import 'package:up_note/features/onboarding/domain/repositories/i_onboarding_repository.dart';

/// A repository class that implements the [IOnboardingRepository] interface.
final class OnboardingRepository implements IOnboardingRepository {
  /// Constructs an [OnboardingRepository].
  const OnboardingRepository({
    required IOnboardingDataSource dataSource,
    required IOnboardingEntityConverter onboardingEntityConverter,
  })  : _dataSource = dataSource,
        _onboardingEntityConverter = onboardingEntityConverter;

  final IOnboardingDataSource _dataSource;
  final IOnboardingEntityConverter _onboardingEntityConverter;

  @override
  Future<OnboardingEntity> getOnboarding() async {
    final onboardingDto = await _dataSource.getOnboarding();
    return _onboardingEntityConverter.convert(onboardingDto);
  }
}
