import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = Uri.https('rickandmortyapi.com', '/api/character');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      List<dynamic> characters = responseData['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to fetch characters: ${response.statusCode}');
    }
  } catch (error) {
    print('error caught: $error');
  }
}