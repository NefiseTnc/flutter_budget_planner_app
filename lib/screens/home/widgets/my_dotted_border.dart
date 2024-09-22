// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:flutter_budget_planner_app/utils/app_color.dart';

class CustomDottedBorderContainer extends StatelessWidget {
  const CustomDottedBorderContainer({
    Key? key,
    required this.iconColor,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final Color iconColor;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColor.blackColor,
      borderType: BorderType.RRect,
      padding: const EdgeInsets.all(6),
      radius: const Radius.circular(15.0),
      strokeWidth: 1.0,
      dashPattern: const [7, 7],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        child: Row(
          children: [
            InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(30 / 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 1,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 25),
            Expanded(
              child: Text(text),
            )
          ],
        ),
      ),
    );
  }
}
