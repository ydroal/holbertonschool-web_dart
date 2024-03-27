import '2-util.dart';


Future<void> getUser() async {
  try {
    var userData = await fetchUser();
    print(userData);
  } catch (error) {
	  print('error caught: $error');
  }
}