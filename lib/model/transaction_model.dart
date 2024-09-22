import 'package:flutter/material.dart';
class TransactionModel {
  final String iconPath;
  final Color iconColor;
  final String title;
  final String description;
  final String money;
  final String timeText;

  TransactionModel(
      {required this.iconPath,
      required this.iconColor,
      required this.title,
      required this.description,
      required this.money,
      required this.timeText});
}
