import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lotura_desktop/data/laundry/dto/response/laundry_response.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/secret.dart';

class LaundryDataSource {
  Future<List<MachineEntity>> getAllLaundryList() async {
    final response = await http.get(Uri.parse("$baseurl/device_list"));
    if (response.statusCode != 200) {
      throw Exception("데이터 불러오기 실패");
    }
    return (jsonDecode(response.body) as List<dynamic>)
        .map((i) => LaundryResponse.fromJson(i).toEntity())
        .toList();
  }
}
