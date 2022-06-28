// import 'dart:ui';

import 'package:animal_adopt/widgets/bottom_nav_bar.dart';
import 'package:animal_adopt/theme.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: Image.asset(
              'assets/images/onboard-image.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 2,
            ),
            padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          '  Find your\nnew friends',
                          textAlign: TextAlign.justify,
                          style: bodyTextStyle.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: primaryTextColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          'Discover you best friend here',
                          style: bodyTextStyle.copyWith(
                            fontSize: 14,
                            color: accentTextColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: accentTextColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: accentTextColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: 230,
                    height: 70,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return BottomNavbar();
                          }),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Let\'s Go',
                            style: bodyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
