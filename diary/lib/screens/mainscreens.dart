import 'dart:ffi';
import 'package:diary/utilities/calendar.dart';
import 'package:diary/Reusables/reusable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:diary/Reusables/title.dart';
import 'package:diary/utilities/listFood.dart';
import '../Reusables/checkcard.dart';
import '../Reusables/mealscard.dart';
import '../utilities/bottomappbar.dart';
import '../utilities/circurlartindicator.dart';
import '../utilities/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:diary/utilities/bodyMeasurement.dart';
enum Select {
  icon1,
  icon2,
  icon3,
  icon4,
}

ListFood list = ListFood();

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  dynamic selectedIcon;
  late var size = MediaQuery.of(context).size;
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.utc(2000, 1, 1),
      lastDate: DateTime.utc(2030, 1, 1),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF1FF),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35.0),
                        child: Text(
                          'My diary',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Calendar(
                        DateTime: "${DateFormat.MMMMd().format(selectedDate)}",
                        onFress: () => _selectDate(context),
                      )
                    ],
                  ),
                  SizedBox(height: 25.0),
                  title(
                    label: 'Mediterranean diet',
                    text: 'Details',
                    space: 40.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    height: size.height * 0.35,
                    width: size.width * 0.82,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Reusable(
                                    title: 'Eaten',
                                    icon: kRiceIcon,
                                    unit: "kcal",
                                    amount: '1127',
                                  ),
                                  Reusable(
                                    title: 'Burned',
                                    icon: kFireIcon,
                                    unit: "kcal",
                                    amount: '102  ',
                                  ),
                                ],
                              ),
                            ),
                            circurlarPercentindicator(),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        const Divider(
                          height: 20,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                          color: Color.fromARGB(245, 238, 231, 231),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            checkCard(
                              title: 'Carbs',
                              space: 10.0,
                              kg: 12,
                              percent: 0.8,
                              linearBackgroundColor: kCheckCardBackgroundColor1,
                              linearColor: kCheckCardColor1,
                            ),
                            checkCard(
                              title: 'Protein',
                              space: 2.0,
                              kg: 30,
                              percent: 0.5,
                              linearBackgroundColor: kCheckCardBackgroundColor2,
                              linearColor: kCheckCardColor2,
                            ),
                            checkCard(
                                title: 'Fat',
                                space: 25.0,
                                kg: 10,
                                percent: 0.3,
                                linearBackgroundColor:
                                    kCheckCardBackgroundColor3,
                                linearColor: kCheckCardColor3),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      title(
                        label: 'Meals today',
                        text: 'Customize',
                        space: 80.0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 40,
                                  ),
                                  MealsCard(
                                    color: kMealCardColor1,
                                    icon: kBreakfastIcon,
                                    title: 'Breakfast',
                                    text1: list.getFoodBreakFastText(0),
                                    text2: list.getFoodBreakFastText(1),
                                    text3: list.getFoodBreakFastText(2),
                                    kcal: '525',
                                    unit: 'kcal',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  MealsCard(
                                    color: kMealCardColor2,
                                    icon: kLunchIcon,
                                    title: 'Lunch',
                                    text1: list.getFoodLunchText(0),
                                    text2: list.getFoodLunchText(1),
                                    text3: list.getFoodLunchText(2),
                                    kcal: '602',
                                    unit: 'kcal',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  MealsCard(
                                    color: kMealCardColor3,
                                    icon: kSnackIcon,
                                    title: 'Snack',
                                    text1: list.getSnackText(0),
                                    text2: '800 kcal',
                                    text3: '',
                                    kcal: '',
                                    unit: '',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  title(
                    label: 'Body measurement',
                    text: 'Details',
                    space: 40.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: size.height * 0.35,
                    width: size.width * 0.82,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),

                    child: BodyMeasurement(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70.0,
            child: bottomAppbar(
              onFress1: () {
                setState(() {
                  selectedIcon = Select.icon1;
                });
              },
              iconColor1:
                  selectedIcon == Select.icon1 ? Colors.lightBlue : null,
              onFress2: () {
                setState(() {
                  selectedIcon = Select.icon2;
                });
              },
              iconColor2:
                  selectedIcon == Select.icon2 ? Colors.lightBlue : null,
              onFress3: () {
                setState(() {
                  selectedIcon = Select.icon3;
                });
              },
              iconColor3:
                  selectedIcon == Select.icon3 ? Colors.lightBlue : null,
              onFress4: () {
                setState(() {
                  selectedIcon = Select.icon4;
                });
              },
              iconColor4:
                  selectedIcon == Select.icon4 ? Colors.lightBlue : null,
            ),
          ),
        ],
      ),
    );
  }
}
