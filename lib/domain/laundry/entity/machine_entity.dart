import 'package:lotura_desktop/core/enum/device_type.dart';
import 'package:lotura_desktop/core/enum/machine_state.dart';

class MachineEntity {
  final int machineId;
  final MachineStateEnum machineState;
  final DeviceTypeEnum deviceType;

  const MachineEntity({
    required this.machineId,
    required this.machineState,
    required this.deviceType,
  });

  MachineEntity copyWith({
    int? machineId,
    MachineStateEnum? machineState,
    DeviceTypeEnum? deviceType,
  }) {
    return MachineEntity(
        machineId: machineId ?? this.machineId,
        machineState: machineState ?? this.machineState,
        deviceType: deviceType ?? this.deviceType);
  }
}
