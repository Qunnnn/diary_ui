import 'package:diary/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class bottomAppbar extends StatelessWidget {
  final dynamic onFress1;
  final dynamic onFress2;
  final dynamic onFress3;
  final dynamic onFress4;
  final dynamic iconColor1;
  final dynamic iconColor2;
  final dynamic iconColor3;
  final dynamic iconColor4;
  bottomAppbar({
    this.onFress1,
    this.onFress2,
    this.onFress3,
    this.onFress4,
    this.iconColor1,
    this.iconColor2,
    this.iconColor3,
    this.iconColor4,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 137, 99, 226),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),
        ),
        child: BottomAppBar(
          color: Colors.white54,
          shape: CircularNotchedRectangle(),
          notchMargin: 7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: onFress1,
                icon: SvgPicture.asset(
                  kBookIcon,
                  height: 30,
                  width: 30,
                  color: iconColor1,
                ),
              ),
              IconButton(
                onPressed: onFress2,
                icon: SvgPicture.asset(
                  kStoreIcon,
                  height: 30,
                  width: 30,
                  color: iconColor2,
                ),
              ),
              Container(width: 60.0),
              IconButton(
                onPressed: onFress3,
                icon: SvgPicture.asset(
                 kAppleIcon,
                  height: 30,
                  width: 30,
                  color: iconColor3,
                ),
              ),
              IconButton(
                onPressed: onFress4,
                icon: SvgPicture.asset(
                  kPersonIcon,
                  height: 30,
                  width: 30,
                  color: iconColor4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
