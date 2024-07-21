import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;
import 'package:up_note/features/app/di/app_scope.dart';

IAppScope? appScope;

Handler middleware(Handler handler) {
  return handler
      .use(
        provider(
          (_) => appScope ??= AppScope(),
        ),
      )
      .use(
        requestLogger(),
      )
      .use(
        fromShelfMiddleware(
          shelf.corsHeaders(
            headers: {shelf.ACCESS_CONTROL_ALLOW_ORIGIN: '*'},
          ),
        ),
      );
}
