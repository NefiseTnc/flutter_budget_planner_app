import 'package:flutter/material.dart';
import 'package:flutter_budget_planner_app/model/transaction_model.dart';

class MyDatas {
  MyDatas._();

  static List<TransactionModel> incomeDatas = [
    TransactionModel(
        iconPath: "assets/icons/salary.png",
        iconColor: const Color(0xFF6563FF),
        title: "Maaş",
        description: "Maaş yatırımı",
        money: "50.000",
        timeText: "10:00"),
    TransactionModel(
        iconPath: "assets/icons/savings.png",
        iconColor: const Color.fromARGB(255, 255, 166, 1),
        title: "Tasarruf",
        description: "Bu ay ki tasarrufumuz",
        money: "10.000",
        timeText: "17:00"),
  ];

  static List<TransactionModel> expenseDatas = [
    TransactionModel(
        iconPath: "assets/icons/shopping-bag.png",
        iconColor: const Color(0xFFFCAC12),
        title: "Alışveriş",
        description: "Giyim alışverişi",
        money: "120",
        timeText: "12:00"),
    TransactionModel(
        iconPath: "assets/icons/restaurant.png",
        iconColor: const Color(0xFFFD3C4A),
        title: "Yiyecek",
        description: "Bir ramen aldım",
        money: "32",
        timeText: "13:00"),
  ];
}
