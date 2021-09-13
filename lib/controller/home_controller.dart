import 'package:app_consume_api/model/api_model.dart';
import 'package:app_consume_api/model/data_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  late final ApiClient api = ApiClient();
  final RxList<DataModel> _apiData = <DataModel>[].obs;

  get apiData => _apiData;
  set apiData(data) => _apiData.value = data;

  void getAllData() async {
    var teste = await api.getAllData();
    apiData.value = teste;
  }
}
