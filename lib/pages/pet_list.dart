import 'package:animal_adopt/models/card_pet.dart';
import 'package:animal_adopt/pages/detail_pet.dart';
import 'package:animal_adopt/theme.dart';
import 'package:animal_adopt/widgets/tabs_home.dart';
import 'package:flutter/material.dart';

class PetList extends StatelessWidget {
  const PetList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            /// Navigation
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '👋  Hello, Ahmad!',
                      style: bodyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: accentTextColor,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Tapos, Depok',
                          style: bodyTextStyle.copyWith(
                            fontSize: 12,
                            color: accentTextColor,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.expand_more,
                          color: accentTextColor,
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/Icon-Notification.png',
                  width: 24,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            /// Search Bar
            Stack(
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
            SizedBox(
              height: 15,
            ),

            /// Tabs
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TabsHome(
                    category: 'Near You',
                    isActive: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TabsHome(
                    category: 'Cat',
                    isActive: true,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TabsHome(
                    category: 'Dog',
                    isActive: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TabsHome(
                    category: 'Male',
                    isActive: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TabsHome(
                    category: 'Female',
                    isActive: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  final CardPet pet = cardPetList[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailPet(
                                pet: pet,
                              );
                            },
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Colors.black.withOpacity(.05),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Hero(
                                tag: 'imageHero$index',
                                child: Image.asset(
                                  pet.imageAsset,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(30, 14, 30, 14),
                                  width: MediaQuery.of(context).size.width - 48,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            pet.name,
                                            style: bodyTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.place,
                                                color: accentTextColor,
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                pet.location,
                                                style: bodyTextStyle.copyWith(
                                                  fontSize: 12,
                                                  color: accentTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 3, 10, 3),
                                                decoration: BoxDecoration(
                                                  color: accentTextColor
                                                      .withOpacity(0.3),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  pet.gender,
                                                  style: bodyTextStyle,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 3, 10, 3),
                                                decoration: BoxDecoration(
                                                  color: accentTextColor
                                                      .withOpacity(0.3),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  '${pet.age} Months',
                                                  style: bodyTextStyle,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.sms,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                itemCount: cardPetList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
