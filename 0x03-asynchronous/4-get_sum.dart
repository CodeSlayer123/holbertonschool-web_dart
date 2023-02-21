import '4-main.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  final String id = json.decode(await fetchUserData())['id'];
  List orders = jsonDecode(await fetchUserOrders(id));
  double total_price = 0;
  for (final order in orders) {
    total_price += jsonDecode(await fetchProductPrice(order));
  }
  return total_price;
}

