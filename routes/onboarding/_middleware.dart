import 'package:dart_frog/dart_frog.dart';
import 'package:in_memory_onboarding_data_source/in_memory_onboarding_data_source.dart';
import 'package:onboarding_data_source/onboarding_data_source.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

const _onboardingDataSource = InMemoryOnboardingDataSource();

Handler middleware(Handler handler) {
  return handler
      .use(
        provider<OnboardingDataSource>((_) => _onboardingDataSource),
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
