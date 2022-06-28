import 'package:animal_adopt/models/card_pet.dart';
import 'package:animal_adopt/pages/detail_pet.dart';
import 'package:animal_adopt/theme.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Discover',
                  style: bodyTextStyle.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
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
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
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
                        flex: 7,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.place,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Find a pet near you',
                                    style: bodyTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'by location with gps',
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
                        width: 30,
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: accentTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Recent Pet',
                  style: bodyTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 225,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      final CardPet pet = cardPetList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return DetailPet(pet: pet);
                          })));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Colors.black.withOpacity(.05),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
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
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                6,
                                        child: Hero(
                                          tag: 'imageHero$index',
                                          child: Image.asset(
                                            pet.imageAsset,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(14, 4, 14, 4),
                                      decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Text(
                                        pet.gender,
                                        style: bodyTextStyle.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.message,
                                            color: secondaryColor,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(14, 10, 0, 0),
                                child: Text(
                                  pet.name,
                                  style: bodyTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                                margin: EdgeInsets.fromLTRB(14, 8, 0, 0),
                                decoration: BoxDecoration(
                                  color: accentTextColor.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  '${pet.age} Months',
                                  style: bodyTextStyle.copyWith(
                                    color: primaryColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    itemCount: cardPetList.length,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Explore Pet',
                  style: bodyTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 85,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/local-cat.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Local Cat',
                          style: bodyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 85,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/bulldog.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Bull Dog',
                          style: bodyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 85,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/labrador.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Labrador',
                          style: bodyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
