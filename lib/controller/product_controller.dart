import 'dart:async';
import 'dart:convert';
import 'package:primary_rest_dart/repository/product_repository.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'product_controller.g.dart';

class ProductController {
  @Route.get('/')
  Future<Response> findAll(Request request) async {
    try {
      final products = await ProductRepository().findAll();
      return Response.ok(
        jsonEncode(products!.map((p) => p.toMap()).toList()),
      );
    } catch (e) {
      return Response.internalServerError();
    }
  }

  Router get router => _$ProductControllerRouter(this);
}
