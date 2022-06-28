import 'package:animal_adopt/models/message.dart';
import 'package:animal_adopt/theme.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Message',
                      style: bodyTextStyle.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Colors.black.withOpacity(.05),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Colors.black.withOpacity(.05),
                          )
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          color: accentColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(.05),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.place,
                                    color: secondaryColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              flex: 3,
                              child: Text(
                                'Discover Owners Near You',
                                style: bodyTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final Message message = messageList[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Colors.black.withOpacity(.05),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 9,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      width: 40,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          message.imageAvatar,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          message.name,
                                          style: bodyTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          message.textChat,
                                          style: bodyTextStyle.copyWith(
                                            fontSize: 12,
                                            color: accentTextColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '${message.time}m',
                                style: bodyTextStyle.copyWith(
                                  color: accentTextColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: messageList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
