import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  Calendar({required this.DateTime, this.onFress});
  final dynamic onFress;
  final String DateTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.arrow_back_ios_new,
          size: 18.0,
        ),
        SizedBox(width: 17.0),
        Icon(
          Icons.calendar_today_outlined,
          size: 18.0,
        ),
        SizedBox(width: 10.0),
        GestureDetector(
          onTap: onFress,
          child: Container(
            child: Text(
              DateTime,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(width: 17.0),
        Icon(
          Icons.arrow_forward_ios,
          size: 18.0,
        ),
      ],
    );
  }
}
