import 'package:flutter/material.dart';

class title extends StatelessWidget {
  final String label;
  final String text;
  final double space;
  title({
    required this.label,
    required this.text,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 35.0),
          child: Text(label,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              )),
        ),
        SizedBox(width: space),
        Container(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w800,
              color: Color(0xFF5DA7DB),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Icon(Icons.arrow_forward_sharp),
      ],
    );
  }
}
