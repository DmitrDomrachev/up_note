import 'package:dart_frog/dart_frog.dart';
import 'package:up_note/features/app/di/app_scope.dart';
import 'package:up_note/features/onboarding/di/onboarding_scope.dart';

IOnboardingScope? _onboardingScope;
Handler middleware(Handler handler) {
  return handler.use(
    provider<IOnboardingScope>(
      (context) => _onboardingScope ??= OnboardingScope(
        context.read<IAppScope>(),
      ),
    ),
  );
}
