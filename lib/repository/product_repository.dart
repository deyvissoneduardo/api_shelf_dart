import 'package:mysql1/mysql1.dart';
import 'package:primary_rest_dart/database/database_connect.dart';
import 'package:primary_rest_dart/models/product_models.dart';

class ProductRepository {
  Future<List<ProductModels>?> findAll() async {
    MySqlConnection? connection;
    try {
      connection = await DatabaseConnect().openConnection();
      final result = await connection.query('select * from products');
      return result.map<ProductModels>((p) {
        return ProductModels(
          id: p['id'],
          name: p['name'],
          price: p['price'],
        );
      }).toList();
    } catch (e, s) {
      print(e);
      print(s);
      rethrow;
    } finally {
      connection?.close();
    }
  }
}
