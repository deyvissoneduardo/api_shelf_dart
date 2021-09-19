import 'dart:convert';

class ProductModels {
  final int id;
  final String name;
  final double price;

  ProductModels({
    required this.id,
    required this.name,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  factory ProductModels.fromMap(Map<String, dynamic> map) {
    return ProductModels(
      id: map['id'],
      name: map['name'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModels.fromJson(String source) =>
      ProductModels.fromMap(json.decode(source));
}
