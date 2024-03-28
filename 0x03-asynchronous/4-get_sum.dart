import 'dart:convert';
import '4-util.dart';


Future<double> calculateTotal() async {
  try {
    var userJsonData = await fetchUserData();
    Map<String, dynamic> userData = json.decode(userJsonData);
    var userId = userData['id'];

    var userJsonOrders = await fetchUserOrders(userId);
    List<dynamic> userOreders = json.decode(userJsonOrders);

    double total = 0.0;
    
    await Future.forEach(userOreders, (order) async {
      var priceJson = await fetchProductPrice(order);
      var priceData = json.decode(priceJson);
      double? price = priceData != null ? double.tryParse(priceData.toString()) : null;
      if (price != null) {
        total += price as double;
      } else {
        throw Exception('No price list'); 
      }
    });
  return total;
  
  } catch (error) {
    return -1;
  }
}



