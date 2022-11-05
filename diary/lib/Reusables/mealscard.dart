import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utilities/constant.dart';

class MealsCard extends StatelessWidget {
  final List<Color> color;
  final String icon;
  final dynamic title;
  final String text1;
  final String text2;
  final String text3;
  final String kcal;
  final String unit;
  MealsCard({
    required this.color,
    required this.icon,
    required this.title,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.kcal,
    required this.unit,
  });
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: color,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(80.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 10,),
          SvgPicture.asset(
               icon,
                height: 40 ,
                width: 40 ,
          ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: kMealsTitleStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              text1,
              style: kFoodListStyle,
            ),
            Text(
              text2,
              style: kFoodListStyle,
            ),
            Text(
              text3,
              style: kFoodListStyle,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  kcal,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  unit,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
