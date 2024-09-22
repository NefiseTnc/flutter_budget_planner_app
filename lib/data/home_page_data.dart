import 'package:flutter_budget_planner_app/model/income_model.dart';

class HomePageData {
  HomePageData._();

  final List<IncomeModel> incomeDatas = [
    IncomeModel(
        iconPath: "assets/icons/salary.png",
        iconColor: "",
        title: "Maaş",
        description: "Maaş yatırımı",
        money: "50.000",
        timeText: "10:00"),
    IncomeModel(
        iconPath: "assets/icons/savings.png",
        iconColor: "",
        title: "Tasarruf",
        description: "Bu ay ki tasarrufumuz",
        money: "10.000",
        timeText: "17:00"),
  ];
}
