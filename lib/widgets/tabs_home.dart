import 'package:animal_adopt/theme.dart';
import 'package:flutter/material.dart';

class TabsHome extends StatelessWidget {
  String category;
  bool isActive;

  TabsHome({required this.category, required this.isActive, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            height: 30,
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.05),
                )
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                category,
                style: bodyTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          )
        : Container(
            height: 40,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.05),
                )
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                category,
                style: bodyTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          );
  }
}
