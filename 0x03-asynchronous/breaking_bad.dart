import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printBbCharacters() async {
  try {
    var data = await http.get(Uri.parse('https://breakingbadapi.com/api/characters'));
    print(jsonDecode(data.body));
    for (final character in jsonDecode(data.body)) {
      print(character['name']);
    }
  } catch (err) {
    print('error caught: ${err}');
  }
  
}