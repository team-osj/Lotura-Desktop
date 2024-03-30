import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lotura_desktop/data/laundry/dto/response/laundry_response.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/secret.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class LaundryDataSource {
  final StreamController<MachineEntity> _streamController;

  LaundryDataSource({required StreamController<MachineEntity> streamController})
      : _streamController = streamController;

  Stream<MachineEntity> get laundryList => _streamController.stream;

  Future<List<MachineEntity>> getAllLaundryList() async {
    final response = await http.get(Uri.parse("$baseurl/device_list"));
    if (response.statusCode != 200) {
      throw Exception("데이터 불러오기 실패");
    }
    return (jsonDecode(response.body) as List<dynamic>)
        .map((i) => LaundryResponse.fromJson(i).toEntity())
        .toList();
  }

  void webSocketInit() async {
    final channel = WebSocketChannel.connect(Uri.parse(webSocketUrl));
    await channel.ready;
    channel.stream.listen((data) {
      _streamController.sink.add(
          LaundryResponse.fromJson(jsonDecode(data) as Map<String, dynamic>)
              .toEntity());
    });
  }
}
