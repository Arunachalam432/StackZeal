// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;

Future getFetchData() async {
  http.Response response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    String data = response.body;
    return jsonDecode(data);
  } else {
    print(response.statusCode);
  }
}
