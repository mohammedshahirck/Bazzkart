// class WishListModel {
//   WishListModel({
//     required this.id,
//     required this.userId,
//     required this.products,
//   });

//   String id;
//   String userId;
//   List<ProductElement> products;

//   factory WishListModel.fromJson(Map<String, dynamic> json) => WishListModel(
//         id: json["_id"],
//         userId: json["userId"],
//         products: List<ProductElement>.from(
//             json["products"].map((x) => ProductElement.fromJson(x))),
//       );
// }

// class ProductElement {
//   ProductElement({
//     required this.product,
//     required this.id,
//   });

//   ProductModel product;
//   String id;

//   factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
//         product: ProductModel.fromJson(json["product"]),
//         id: json["_id"],
//       );
// }

// import 'package:ecommerce/model/product/product_model.dart';

// class WishListModel {
//   WishListModel({
//     required this.id,
//     required this.userId,
//     required this.products,
//     required this.v,
//   });

//   String id;
//   String userId;
//   List<ProductElement> products;
//   int v;

//   factory WishListModel.fromJson(Map<String, dynamic> json) => WishListModel(
//         id: json["_id"],
//         userId: json["userId"],
//         products: List<ProductElement>.from(
//             json["products"].map((x) => ProductElement.fromJson(x))),
//         v: json["__v"],
//       );
// }

// class ProductElement {
//   ProductElement({
//     required this.product,
//     required this.id,
//   });

//   ProductModel product;
//   String id;

//   factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
//         product: ProductModel.fromJson(
//           json["product"],
//         ),
//         id: json["_id"],
//       );
// }

import 'package:ecommerce/model/product/product_model.dart';

class WishListModel {
  WishListModel({
    required this.id,
    required this.userId,
    required this.products,
  });

  String id;
  String userId;
  List<ProductElement> products;

  factory WishListModel.fromJson(Map<String, dynamic> json) => WishListModel(
        id: json["_id"] as String,
        userId: json["userId"] as String,
        products: List<ProductElement>.from(
            json["products"].map((x) => ProductElement.fromJson(x))),
      );
}

class ProductElement {
  ProductElement({
    required this.product,
    required this.id,
  });

  ProductModel product;
  String id;

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        product: ProductModel.fromJson(json["product"]),
        id: json["_id"] as String,
      );
}
