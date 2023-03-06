import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiService {
  static String _baseUrl = "http://192.168.42.35:3030/";

  static Future<void> index() async {
    Uri requestUri = Uri.parse(_baseUrl);
    var response = await http.get(requestUri);
    var decoded = response.body;
    log(decoded);
  }
}
