import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  fontSize: 13.0,
  fontWeight: FontWeight.w600,
  color: Colors.grey,
);
const kMealsTitleStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kFoodListStyle = TextStyle(
  fontSize: 13.0,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

const kBodyTitleStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const kUnitBodyStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  color: Colors.grey,
);
const List<Color> kCheckCardBackgroundColor1 = [
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 238, 238),
];
const List<Color> kCheckCardColor1 = [
  Color.fromARGB(255, 103, 176, 228),
  Color.fromARGB(255, 103, 176, 228),
  Color.fromARGB(255, 103, 176, 228),
  Color.fromARGB(255, 103, 176, 228),
  Color.fromARGB(255, 93, 167, 219),
  Color.fromARGB(255, 93, 167, 219),
  Color.fromARGB(255, 129, 198, 232),
  Color.fromARGB(255, 129, 198, 232),
];
const List<Color> kCheckCardBackgroundColor2 = [
  Color.fromARGB(255, 247, 209, 230),
  Color.fromARGB(255, 247, 209, 230),
  Color.fromARGB(255, 247, 209, 230),
  Color.fromARGB(255, 247, 209, 230),
  Color.fromARGB(255, 247, 209, 230),
  Color.fromARGB(255, 247, 209, 230),
  Color.fromARGB(255, 247, 209, 230),
  Color.fromARGB(255, 248, 161, 209),
];
const List<Color> kCheckCardColor2 = [
  Color.fromARGB(255, 248, 161, 209),
  Color.fromARGB(255, 248, 161, 209),
  Color.fromARGB(255, 248, 161, 209),
  Color.fromARGB(255, 248, 161, 209),
  Color.fromARGB(255, 227, 107, 174),
  Color.fromARGB(255, 227, 107, 174),
  Color.fromARGB(255, 227, 107, 174),
  Color.fromARGB(255, 227, 107, 174),
];
const List<Color> kCheckCardBackgroundColor3 = [
  Color.fromARGB(255, 255, 245, 222),
  Color.fromARGB(255, 253, 249, 241),
  Color.fromARGB(255, 253, 249, 241),
  Color.fromARGB(255, 253, 249, 241),
  Color.fromARGB(255, 253, 249, 241),
  Color.fromARGB(255, 253, 249, 241),
  Color.fromARGB(255, 253, 249, 241),
  Color.fromARGB(255, 253, 249, 241),
];
const List<Color> kCheckCardColor3 = [
  Color.fromARGB(255, 255, 245, 178),
  Color.fromARGB(255, 255, 245, 178),
  Color.fromARGB(255, 255, 245, 178),
  Color.fromARGB(255, 255, 248, 156),
  Color.fromARGB(255, 255, 248, 156),
  Color.fromARGB(255, 255, 248, 156),
  Color.fromARGB(255, 255, 248, 156),
  Color.fromARGB(255, 255, 248, 156),
];
const List<Color> kMealCardColor1 = [
  Color.fromARGB(255, 241, 119, 119),
  Color.fromARGB(255, 235, 119, 119),
  Color.fromARGB(255, 238, 135, 121),
  Color.fromARGB(255, 240, 135, 147),
  Color.fromARGB(255, 235, 149, 137),
  Color.fromARGB(255, 227, 163, 131),
  Color.fromARGB(255, 216, 170, 124),
];

const List<Color> kMealCardColor2 = [
  Color.fromARGB(255, 135, 162, 251),
  Color.fromARGB(255, 135, 162, 251),
  Color.fromARGB(255, 135, 162, 251),
  Color.fromARGB(255, 135, 162, 251),
  Color.fromARGB(255, 135, 162, 251),
  Color.fromARGB(255, 135, 162, 251),
  Color.fromARGB(255, 135, 162, 251),
  Color.fromARGB(255, 135, 162, 251),
];
const List<Color> kMealCardColor3 = [
  Color.fromARGB(255, 255, 172, 199),
  Color.fromARGB(255, 255, 172, 199),
  Color.fromARGB(255, 255, 172, 199),
  Color.fromARGB(255, 255, 172, 199),
  Color.fromARGB(255, 255, 141, 199),
  Color.fromARGB(255, 255, 141, 199),
  Color.fromARGB(255, 255, 141, 199),
  Color.fromARGB(255, 255, 141, 199),
];
const List<Color> kCircularPercentIndicatorColor = [
  Color.fromARGB(255, 73, 150, 205),
  Color.fromARGB(255, 73, 150, 205),
  Color.fromARGB(255, 73, 150, 205),
  Color.fromARGB(255, 73, 150, 205),
  Color.fromARGB(255, 73, 150, 205),
  Color.fromARGB(255, 129, 198, 232),
  Color.fromARGB(255, 129, 198, 232),
  Color.fromARGB(255, 129, 198, 232),
];

// Icons

const String kBookIcon = 'assets/icons/book.svg';
const String kStoreIcon = 'assets/icons/store.svg';

const String kAppleIcon = 'assets/icons/apple.svg';
const String kPersonIcon = 'assets/icons/person.svg';
const String kRiceIcon = 'assets/icons/rice-svgrepo-com.svg';
const String kFireIcon = 'assets/icons/fire.svg';
const String kBreakfastIcon = 'assets/icons/breakfast.svg';
const String kLunchIcon = 'assets/icons/lunch.svg';
const String kSnackIcon = 'assets/icons/snack.svg';
