import 'package:flutter/cupertino.dart';
import 'package:lotura_desktop/core/lotura_icons.dart';

enum DeviceTypeEnum {
  dry(deviceType: "DRY", deviceName: "건조기", iconData: LoturaIcons.dry),
  wash(deviceType: "WASH", deviceName: "세탁기", iconData: LoturaIcons.laundry);

  final String deviceType, deviceName;
  final IconData iconData;

  const DeviceTypeEnum({
    required this.deviceType,
    required this.deviceName,
    required this.iconData,
  });
}
