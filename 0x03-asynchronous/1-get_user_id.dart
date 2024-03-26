import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var userJsonData = await fetchUserData();
  Map<String, dynamic> userData = json.decode(userJsonData);
  return userData['id'];
}

