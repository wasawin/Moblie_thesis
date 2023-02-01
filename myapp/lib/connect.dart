import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> fetchData() async {
  final response = await http.get('https://cn.php');

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}
