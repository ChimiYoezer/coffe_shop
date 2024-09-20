
import 'package:foodhub/modelClass/coffe_class.dart';

List<CoffeModel> allBrand = [
  CoffeModel(
    Brand:"All Coffee",
  ),
  CoffeModel(
    Brand:"Machiato",
  ),
  CoffeModel(
    Brand:"Latte",
  ),
  CoffeModel(
    Brand:"Flat White",
  ),

];

List<ProductModel> allPro = [
  ProductModel(
name: "Caffe Mocha",
type: "Deep Foam",
rating: 4.8,
price:4.53,
quantity: 0,
imageUrl:"assets/image/caffe.jpg",
detils: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of esspresso coffe and 85ml of fresh milk..",
fee: 1.0,
),
  ProductModel(
    name: "Flat White",
    type: "Espresso",
    rating: 4.8,
    price:3.53,
    quantity: 0,
    imageUrl:"assets/image/flat.jpg",
    detils: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of esspresso coffe and 85ml of fresh milk..",
    fee: 1.0,

  ),
  ProductModel(
    name: "Cappuccino",
    type: "Deep Foam",
    rating: 4.8,
    price:4.40,
    quantity: 0,
    imageUrl:"assets/image/cappu.jpg",
    detils: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of esspresso coffe and 85ml of fresh milk..",
    fee: 1.0,
  ),
  ProductModel(
    name: "Cold brew",
    type: "Deep Foam",
    rating: 4.8,
    price:4.53,
    quantity: 0,
    imageUrl:"assets/image/cold.jpg",
    detils: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of esspresso coffe and 85ml of fresh milk..",
    fee: 1.0,
  ),
];
List<BrandModel> allSize = [

  BrandModel(
    size:"S",
  ),
  BrandModel(
    size:"M",
  ),
  BrandModel(
    size:"L",
  ),
];


List<PaymentModel> allMethods = [
  PaymentModel(paymentMethod: "Cash", imgUrl: "assets/image/cash.png"),
  PaymentModel(paymentMethod: "Wallet", imgUrl: "assets/image/credit.png"),

];
