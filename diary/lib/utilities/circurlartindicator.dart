import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'constant.dart';

class circurlarPercentindicator extends StatelessWidget {
  const circurlarPercentindicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30.0, top: 30.0),
      child: new CircularPercentIndicator(
        backgroundWidth: 5.0,
        backgroundColor: Color.fromARGB(141, 202, 218, 247),
        radius: 60.0,
        lineWidth: 13.0,
        linearGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: kCircularPercentIndicatorColor),
        animation: true,
        percent: 0.46,
        circularStrokeCap: CircularStrokeCap.round,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "1503",
              style: new TextStyle(
                  color: Color.fromARGB(255, 68, 65, 243),
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0),
            ),
            new Text(
              'kcal left',
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
