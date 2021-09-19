import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'hello_controller.g.dart';

class HelloController {
  Router get router => _$HelloControllerRouter(this);

  @Route.get('/')
  Response hello(Request request) {
    return Response.ok('teste api shelf');
  }
}
