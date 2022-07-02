import 'package:animal_adopt/models/card_pet.dart';
import 'package:animal_adopt/theme.dart';
import 'package:flutter/material.dart';

class DetailPet extends StatefulWidget {
  final CardPet pet;

  DetailPet({required this.pet, super.key});

  @override
  State<DetailPet> createState() => _DetailPetState();
}

class _DetailPetState extends State<DetailPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      ),
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
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 48,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Colors.black.withOpacity(.1),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Hero(
                          tag: 'imageHero',
                          child: Image.asset(
                            widget.pet.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        )),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.pet.name,
                                      style: bodyTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.place,
                                          size: 18,
                                          color: accentTextColor,
                                        ),
                                        Text(
                                          widget.pet.location,
                                          style: bodyTextStyle.copyWith(
                                            fontSize: 14,
                                            color: accentTextColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20,
                                        color: Colors.black.withOpacity(.1),
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        widget.pet.isFavorite =
                                            !widget.pet.isFavorite;
                                      });
                                    },
                                    icon: Icon(
                                      widget.pet.isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.pink,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: accentTextColor, width: 1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Gender',
                                        style: bodyTextStyle.copyWith(
                                          color: accentTextColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        widget.pet.gender,
                                        style: bodyTextStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: accentTextColor, width: 1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Age',
                                        style: bodyTextStyle.copyWith(
                                          color: accentTextColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '${widget.pet.age.toString()} Month',
                                        style: bodyTextStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: accentTextColor, width: 1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Race',
                                        style: bodyTextStyle.copyWith(
                                          color: accentTextColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        widget.pet.race,
                                        style: bodyTextStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.pet.description,
                            style: bodyTextStyle.copyWith(
                              fontSize: 16,
                              color: accentTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(widget.pet.imageOwner),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Owner',
                              style: bodyTextStyle.copyWith(
                                fontSize: 14,
                                color: accentTextColor,
                              ),
                            ),
                            Text(
                              widget.pet.nameOwner,
                              style: bodyTextStyle.copyWith(
                                fontSize: 16,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25, 12, 25, 12),
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.sms,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
