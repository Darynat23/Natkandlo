import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void httpRegistro(Map<String, dynamic> formData) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = 'http://192.168.0.25:8888/usuarios';

  // Await the http get response, then decode the json-formatted response.
  //body:{'nombre_usuario':formData['nombre_usuario'],'clave':formData['clave']}
  var response = await http.post(url);
  print(response);
  /*if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }*/
}
