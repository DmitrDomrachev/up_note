import 'dart:io';

import 'package:mysql_client/mysql_client.dart';
import 'package:up_note/db/i_mysql_datasource.dart';
import 'package:up_note/db/mysql_datasource.dart';

/// App dependencies.
abstract interface class IAppScope {
  /// Returns the MySQL connection pool.
  IMysqlDataSource get iMysqlDataSource;
}

/// Scope of dependencies which need through all app's life.
final class AppScope implements IAppScope {
  /// Create an instance [AppScope].
  AppScope() {
    final mySQLConnectionPool = MySQLConnectionPool(
      host: Platform.environment['DB_HOST']!,
      port: int.parse(Platform.environment['DB_PORT']!),
      userName: Platform.environment['DB_USER']!,
      password: Platform.environment['DB_PASSWORD'],
      maxConnections: 10,
      databaseName: Platform.environment['DB_NAME'],
    );
    _iMysqlDataSource = MysqlDataSource(pool: mySQLConnectionPool);
  }

  late final IMysqlDataSource _iMysqlDataSource;

  @override
  IMysqlDataSource get iMysqlDataSource => _iMysqlDataSource;
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
