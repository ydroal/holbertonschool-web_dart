import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = Uri.https('rickandmortyapi.com', '/api/character');
    final response = await http.get(url);
    final responseData = json.decode(response.body);
    List<dynamic> characters = responseData['results'];

    for (var character in characters) {
      print(character['name']);
    }
  } catch (error) {
    print('Error caught: $error');
  }
}