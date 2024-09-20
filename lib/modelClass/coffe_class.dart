

class CoffeModel {
  String Brand;

  CoffeModel({
    required this.Brand,

  });

}
class ProductModel{
  String name;
  String type;
  double price;
  double rating;
  int quantity;
  String imageUrl;
  String detils;
  double fee;

  ProductModel({
    required this.name,
    required this.price,
    required this.type,
    required this.rating,
    required this.quantity,
    required this.imageUrl,
    required this.detils,
    required this.fee,

});
}

class DeliveryModel {
  String userName;
  String address;
  double totalPrice;



  DeliveryModel({
    required this.userName,
    required this.address,
    required this.totalPrice,

  });
}

class BrandModel {
  String size;

  BrandModel({
    required this.size,

  });

}
class PaymentModel {
  String imgUrl;
  String paymentMethod;

  PaymentModel({
    required this.paymentMethod,
    required this.imgUrl,
  });
}
