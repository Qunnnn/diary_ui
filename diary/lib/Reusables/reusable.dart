import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utilities/constant.dart';

class Reusable extends StatelessWidget {
  final String title;
  final String icon;
  final dynamic unit;
  final dynamic amount;
  Reusable({required this.title, required this.icon, this.unit, this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 20.0),
              child: Text(
                title,
                style: kTitleStyle,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.0),
        Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child:  SvgPicture.asset(
          icon,
          height: 25,
          width: 20,
        ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                amount,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                unit,
                style: kTitleStyle,
              ),
            ]),
      ],
    );
  }
}
