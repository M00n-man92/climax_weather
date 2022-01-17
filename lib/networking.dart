import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  final String url;

  Networking(this.url);
  Future<void> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decoededdata = jsonDecode(data);
      return decoededdata;
    } else
      print(response.statusCode);
  }
}
