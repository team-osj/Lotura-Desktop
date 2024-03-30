import 'dart:convert';

import 'package:lotura_desktop/data/laundry/data/fake_json.dart';
import 'package:lotura_desktop/data/laundry/dto/response/laundry_response.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/domain/laundry/repository/laundry_repository.dart';

class LaundryRepositoryImpl implements LaundryRepository {
  @override
  Future<List<MachineEntity>> getAllLaundryList() async {
    return (jsonDecode(fakeJsonData) as List<dynamic>)
        .map((i) => LaundryResponse.fromJson(i).toEntity())
        .toList();
  }

  @override
  Stream<MachineEntity> get laundryList => throw UnimplementedError();

  @override
  void webSocketInit() {}
}
