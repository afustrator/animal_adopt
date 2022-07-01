import 'package:animal_adopt/models/card_pet.dart';
import 'package:animal_adopt/pages/detail_pet.dart';
import 'package:animal_adopt/pages/pet_list.dart';
import 'package:animal_adopt/theme.dart';
import 'package:animal_adopt/widgets/tabs_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return PetList();
        },
      ),
    );
  }
}
