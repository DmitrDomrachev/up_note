import 'package:mysql_client/mysql_client.dart';
import 'package:up_note/features/onboarding/data/data_source/onboarding_datasource.dart';
import 'package:up_note/features/onboarding/data/dtos/onboarding.dart';

/// A MySQL implementation of the [IOnboardingDataSource] interface.
class MysqlOnboardingDatasource implements IOnboardingDataSource {
  /// Creates a new instance of [MysqlOnboardingDatasource].
  ///
  /// The [pool] parameter is required and represents the MySQL connection pool.
  MysqlOnboardingDatasource({
    required MySQLConnectionPool pool,
  }) : _pool = pool;

  final MySQLConnectionPool _pool;

  @override
  Future<OnboardingDto> getOnboarding() async {
    final pages = <OnboardingPageDto>[];
    final result = await _pool.execute('''
SELECT op.*
FROM onboarding_pages op
JOIN (
    SELECT MAX(id) AS max_id
    FROM onboarding
) o ON op.onboarding_id = o.max_id;
''');
    for (final row in result.rows) {
      final data = row.assoc();
      pages.add(OnboardingPageDto.fromJson(data));
    }
    return OnboardingDto(pages: pages);
  }
}
