import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../utilities/constant.dart';

class checkCard extends StatelessWidget {
  final String title;
  final double space;
  final int kg;
  final double percent;
  final List<Color> linearColor;
  final List<Color> linearBackgroundColor;
  checkCard({
    required this.title,
    required this.space,
    required this.kg,
    required this.percent,
    required this.linearColor,
    required this.linearBackgroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: space),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 2.0),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: new LinearPercentIndicator(
                linearGradientBackgroundColor:
                    LinearGradient(colors: linearBackgroundColor),
                linearGradient: LinearGradient(colors: linearColor),
                width: 80,
                lineHeight: 4.0,
                percent: percent,
                barRadius: Radius.circular(80),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Container(
                margin: EdgeInsets.zero,
                child: Text(
                  '${kg}g left',
                  style: kTitleStyle,
                )),
          ],
        ),
      ],
    );
  }
}
