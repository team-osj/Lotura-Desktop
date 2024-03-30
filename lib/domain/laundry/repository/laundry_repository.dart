import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';

abstract interface class LaundryRepository {
  void webSocketInit();

  Stream<MachineEntity> get laundryList;

  Future<List<MachineEntity>> getAllLaundryList();
}
