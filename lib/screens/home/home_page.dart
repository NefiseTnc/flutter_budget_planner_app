import 'package:flutter/material.dart';
import 'package:flutter_budget_planner_app/screens/home/widgets/my_dotted_border.dart';
import 'package:flutter_budget_planner_app/utils/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset(
                        "assets/icons/menu.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: AppColor.greyColor.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset(
                                "assets/icons/arrow-left.png",
                                width: 16,
                                height: 16,
                              ),
                            ),
                            const Text(
                              "March 2022",
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Image.asset(
                                "assets/icons/arrow-right.png",
                                width: 16,
                                height: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset(
                        "assets/icons/setting.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  height: 208,
                  decoration: BoxDecoration(
                    color: AppColor.pinkColor,
                    borderRadius: BorderRadius.circular(22.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.3),
                        blurRadius: 0,
                        offset:
                            const Offset(7, -17), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Toplam Bakiye",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        "6,890,000₺",
                        style: TextStyle(
                            fontSize: 32,
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Image.asset(
                                    "assets/icons/arrow-bottom.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Gider",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Text(
                                      "1,190,000₺",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Image.asset(
                                    "assets/icons/arrow-bottom.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Gelir",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Text(
                                      "3,900,000₺",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Gelirler",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 20),
               /*  CustomDottedBorderContainer(
                  iconColor: AppColor.greenColor,
                  text:
                      "Bu dönem için herhangi bir geliriniz yok. Bir tane eklemek için dokunun.",
                  onTap: () {},
                ), */
                Container(),
                const SizedBox(height: 20),
                const Text(
                  "Giderler",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 20),
                CustomDottedBorderContainer(
                  iconColor: AppColor.redColor,
                  text:
                      "Bu dönem için herhangi bir gideriniz yok. Bir tane eklemek için dokunun.",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
