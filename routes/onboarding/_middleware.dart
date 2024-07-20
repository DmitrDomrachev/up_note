import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;
import 'package:up_note/features/onboarding/data/converters/onboarding_entity_converter.dart';
import 'package:up_note/features/onboarding/data/data_source/onboarding_datasource.dart';
import 'package:up_note/features/onboarding/data/repositories/onboarding_repository.dart';
import 'package:up_note/features/onboarding/domain/repositories/i_onboarding_repository.dart';

const _onboardingDataSource = InMemoryOnboardingDataSource();
const _onboardingEntityConverter = OnboardingEntityConverter(
  onboardingPageEntityConverter: OnboardingPageEntityConverter(),
);
const _onboardingRepository = OnboardingRepository(
  dataSource: _onboardingDataSource,
  onboardingEntityConverter: _onboardingEntityConverter,
);

Handler middleware(Handler handler) {
  return handler
      .use(
        provider<IOnboardingRepository>((_) => _onboardingRepository),
      )
      .use(requestLogger())
      .use(
        fromShelfMiddleware(
          shelf.corsHeaders(
            headers: {shelf.ACCESS_CONTROL_ALLOW_ORIGIN: '*'},
          ),
        ),
      );
}
