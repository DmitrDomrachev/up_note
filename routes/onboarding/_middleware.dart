import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;
import 'package:up_note/features/onboarding/data/converters/onboarding_entity_converter.dart';
import 'package:up_note/features/onboarding/data/data_source/mysql_onboarding_datasource.dart';
import 'package:up_note/features/onboarding/data/repositories/onboarding_repository.dart';
import 'package:up_note/features/onboarding/domain/repositories/i_onboarding_repository.dart';

final _pool = MySQLConnectionPool(
  host: Platform.environment['DB_HOST']!,
  port: int.parse(Platform.environment['DB_PORT']!),
  userName: Platform.environment['DB_USER']!,
  password: Platform.environment['DB_PASSWORD'],
  maxConnections: 10,
  databaseName: Platform.environment['DB_NAME'],
);
final _onboardingDataSource = MysqlOnboardingDatasource(pool: _pool);
const _onboardingEntityConverter = OnboardingEntityConverter(
  onboardingPageEntityConverter: OnboardingPageEntityConverter(),
);
final _onboardingRepository = OnboardingRepository(
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
