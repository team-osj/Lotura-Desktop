import 'package:flutter/material.dart';
import 'package:lotura_desktop/core/enum/device_type.dart';
import 'package:lotura_desktop/core/enum/machine_state.dart';
import 'package:lotura_desktop/core/lotura_colors.dart';

class MachineButton extends StatelessWidget {
  final MachineStateEnum state;
  final int index;
  final DeviceTypeEnum deviceType;

  const MachineButton({
    super.key,
    required this.state,
    required this.index,
    required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.0,
      height: 84.0,
      decoration: BoxDecoration(
        color: state.color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(deviceType.iconData, size: 24.0, color: LoturaColors.gray300),
            Row(
              children: [
                Text("$index번", style: const TextStyle(fontSize: 16.0)),
                SizedBox(width: index < 10 ? 10.2 : 5.0),
                Text(deviceType.deviceName,
                    style: const TextStyle(fontSize: 16.0)),
                const SizedBox(width: 8.0),
                Icon(
                  state.icon,
                  size: 18.0,
                  color: state.deepColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
