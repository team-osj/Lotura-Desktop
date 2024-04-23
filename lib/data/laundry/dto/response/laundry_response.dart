import 'package:lotura_desktop/core/enum/device_type.dart';
import 'package:lotura_desktop/core/enum/machine_state.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';

class LaundryResponse {
  final int id;
  final int state;
  final String deviceType;

  const LaundryResponse({
    required this.id,
    required this.state,
    required this.deviceType,
  });

  factory LaundryResponse.fromJson(Map<String, dynamic> json) {
    return LaundryResponse(
      id: json['id'],
      state: json['state'],
      deviceType: json['device_type'],
    );
  }

  MachineEntity toEntity() {
    return MachineEntity(
      machineId: id,
      machineState: MachineStateEnum.values.elementAt(state),
      deviceType: DeviceTypeEnum.values.byName(deviceType.toLowerCase()),
    );
  }
}
