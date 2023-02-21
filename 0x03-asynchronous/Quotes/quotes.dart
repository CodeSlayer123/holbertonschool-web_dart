import 'dart:convert';
import 'package:http/http.dart' as http;
Future<String> generateQuote(id) async {
  try {
    var data = await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/'));
    print(jsonDecode(data.body));
    for (final quote in jsonDecode(data.body)) {
      print(quote);
    }
    return 'test';
  } catch (err) {
    print('There are no quotes');
  }


}