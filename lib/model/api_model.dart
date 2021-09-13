import 'dart:convert';
import 'package:app_consume_api/model/data_model.dart';
import 'package:http/http.dart' as http;

const apiUrl = 'https://jsonplaceholder.typicode.com/photos/';

class ApiClient {
  final http.Client httpClient = http.Client();

  getAllData() async {
    try {
      var response = await httpClient.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        Iterable jsonResponse = jsonDecode(response.body);
        List<DataModel> listDataModel =
            jsonResponse.map((model) => DataModel.fromJson(model)).toList();
        return listDataModel;
      } else {
        return 'Erro: ${response.statusCode}';
      }
    } catch (e) {
      return "Erro ao importar Dados $e";
    }
  }
}
