import '0-util.dart';

Future<void> usersCount() async {
  var number = await fetchUsersCount();
  print(number);
}