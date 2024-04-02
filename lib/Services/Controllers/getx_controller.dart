import 'package:get/get.dart';
import 'package:myapp/Models/product_model.dart';

class CartController extends GetxController {
  var cart = <Product>[].obs;
  void addProductToCart(Product product) {
    cart.add(product);
    update();
  }

// Remove product from cart
  void removeProductFromCart(Product product) {
    cart.remove(product);
    update();
  }

// Calculate price
  double calculatePrice() {
    double totalPrice = 0;
    for (var product in cart) {
      totalPrice += product.price;
    }
    return totalPrice;
  }

// Calculate discount
  // double calculateDiscount() {
  //   double totalDiscount = 0;
  //   for (var product in cart) {
  //     totalDiscount += product.discount;
  //   }
  //   return totalDiscount;
  // }

// // Calculate total
//   double calculateTotal() {
//     double totalPrice = calculatePrice();
//     double totalDiscount = calculateDiscount();
//     return totalPrice - totalDiscount;
//   }
// 
}
