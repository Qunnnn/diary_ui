import 'package:diary/utilities/constant.dart';

import 'package:flutter/material.dart';

class BodyMeasurement extends StatelessWidget {
  const BodyMeasurement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Height',
                      style: kBodyTitleStyle,
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '190',
                      style: kUnitBodyStyle,
                    ),
                    Text(
                      'cm',
                      style: kUnitBodyStyle,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Weight',
                      style: kBodyTitleStyle,
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '80',
                      style: kUnitBodyStyle,
                    ),
                    Text(
                      'kg',
                      style: kUnitBodyStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 1,
          height: 10,
          indent: 20,
          endIndent: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 40, right: 10),
                    child: Text(
                      'Chest:',
                      style: kBodyTitleStyle,
                    )),
                Text(
                  '120',
                  style: kUnitBodyStyle,
                ),
                Text(
                  'cm',
                  style: kUnitBodyStyle,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 40, right: 10),
                    child: Text(
                      'Waist:',
                      style: kBodyTitleStyle,
                    )),
                Text(
                  '100',
                  style: kUnitBodyStyle,
                ),
                Text(
                  'cm',
                  style: kUnitBodyStyle,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 40, right: 10),
                    child: Text(
                      'Buttocks:',
                      style: kBodyTitleStyle,
                    )),
                Text(
                  '140',
                  style: kUnitBodyStyle,
                ),
                Text(
                  'cm',
                  style: kUnitBodyStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
