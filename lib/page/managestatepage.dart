import 'package:flutter/material.dart';
import 'package:foodhub/modelClass/coffe_class.dart';
class ManageState with ChangeNotifier {
  int _counter = 0;


  set counter(int value) {
    _counter = value;
    notifyListeners();
  }


  int get counter => _counter;


  void incrementCounter() {
    _counter++;
    notifyListeners();
  }


  List<ProductModel> _cartProducts = [];

  bool addToCart(ProductModel product) {
    if (!_cartProducts.contains(product)) {
      _cartProducts.add(product);
      _counter++;
      notifyListeners();
      return true;
    }
    else {
      return false;
    }
  }

  List<ProductModel> get cartProducts => _cartProducts;

  void increaseQuantity(ProductModel product) {
    product.quantity++;
    notifyListeners();
  }

  void decreaseQuantity(ProductModel product) {
    if (product.quantity > 1) {
      product.quantity--;
      notifyListeners();
    } else {
      _cartProducts.remove(product);
      _counter--;
      notifyListeners();
    }
  }


  double getTotalPrice() {
    double total = 0;
    for (var product in _cartProducts) {
      total = total + product.price  ;
    }
    return total;
  }
  double getTotalOder() {
    double total = 0;
    for (var product in _cartProducts) {
      total =  product.price + product.fee ;
    }
    return total;
  }

  List<DeliveryModel> _deliveryDetails = [];

  List<DeliveryModel> get deliveryDetails => _deliveryDetails;

  void addDeliveryDetails(String name, String address, double price) {
    _deliveryDetails.add(
      DeliveryModel(
        userName: name,
        address: address,
        totalPrice: price,
      ),
    );
  }


}






