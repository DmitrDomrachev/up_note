import 'package:up_note/features/app/di/app_scope.dart';


/// Interface for [{{name.pascalCase()}}Scope].
/// Scope of dependencies for {{name.pascalCase()}} feature.
abstract interface class I{{name.pascalCase()}}Scope {}


/// {@template {{name.snakeCase()}}_repository.class}
/// Implementation of [I{{name.pascalCase()}}Scope].
/// {@endtemplate}
class {{name.pascalCase()}}Scope implements I{{name.pascalCase()}}Scope {
  /// {@macro {{name.snakeCase()}}_scope.class}
  {{name.pascalCase()}}Scope(IAppScope appScope);
}