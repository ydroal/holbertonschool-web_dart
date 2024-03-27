import 'dart:convert';
import '3-util.dart';


Future<String> greetUser() async {
  try {
    var userJsonData = await fetchUserData();
    Map<String, dynamic> userData = json.decode(userJsonData);
    return 'Hello ${userData['username']}';
  } catch (error) {
	  return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    var isloggedIn = await checkCredentials();
    if (isloggedIn) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}