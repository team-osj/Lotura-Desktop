import 'package:flutter/material.dart';
import 'package:lotura_desktop/core/lotura_colors.dart';
import 'package:lotura_desktop/core/lotura_icons.dart';

enum MachineStateEnum {
  working(
      icon: LoturaIcons.working,
      color: LoturaColors.primary50,
      deepColor: LoturaColors.primary700,
      text: "작동중"),
  available(
      icon: LoturaIcons.checkCircle,
      color: LoturaColors.green50,
      deepColor: LoturaColors.green700,
      text: "사용 가능"),
  disconnected(
      icon: LoturaIcons.disconnected,
      color: LoturaColors.white,
      deepColor: LoturaColors.black,
      text: "연결 끊김"),
  breakdown(
      icon: LoturaIcons.cancelCircle,
      color: LoturaColors.red50,
      deepColor: LoturaColors.red700,
      text: "고장");

  final IconData icon;
  final Color color, deepColor;
  final String text;

  const MachineStateEnum({
    required this.icon,
    required this.color,
    required this.deepColor,
    required this.text,
  });
}
