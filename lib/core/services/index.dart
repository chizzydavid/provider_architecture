import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<dynamic> get(String path) async {

    final response = await http.get(path);
    return json.decode(response.body);
  }

  static Future<dynamic> post(String path, Map<dynamic, dynamic> body) async {

    final response = await http.post(path, body: json.encode(body));

    return json.decode(response.body);
  }
}
