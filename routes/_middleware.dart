import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_swagger_ui/shelf_swagger_ui.dart';

Handler middleware(Handler handler) {
  return fromShelfHandler(
    SwaggerUI('swagger.yaml', title: 'title').call,
  );
}
