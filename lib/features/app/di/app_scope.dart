import 'dart:io';

import 'package:mysql_client/mysql_client.dart';

/// App dependencies.
abstract interface class IAppScope {
  /// Returns the MySQL connection pool.
  MySQLConnectionPool get mySQLConnectionPool;
}

/// Scope of dependencies which need through all app's life.
final class AppScope implements IAppScope {
  /// Create an instance [AppScope].
  AppScope() {
    _mySQLConnectionPool = MySQLConnectionPool(
      host: Platform.environment['DB_HOST']!,
      port: int.parse(Platform.environment['DB_PORT']!),
      userName: Platform.environment['DB_USER']!,
      password: Platform.environment['DB_PASSWORD'],
      maxConnections: 10,
      databaseName: Platform.environment['DB_NAME'],
    );
  }

  late final MySQLConnectionPool _mySQLConnectionPool;

  @override
  MySQLConnectionPool get mySQLConnectionPool => _mySQLConnectionPool;
  //   return provider<MySQLConnectionPool>(
  //     (_) => _mySQLConnectionPool ??= MySQLConnectionPool(
  //       host: Platform.environment['DB_HOST']!,
  //       port: int.parse(Platform.environment['DB_PORT']!),
  //       userName: Platform.environment['DB_USER']!,
  //       password: Platform.environment['DB_PASSWORD'],
  //       maxConnections: 10,
  //       databaseName: Platform.environment['DB_NAME'],
  //     ),
  //   );
  // }
}
