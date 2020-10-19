import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/components/header_with_searchbar.dart';
import 'package:plant_app/constants.dart';

import 'RecomentedPlants.dart';
import 'TitleWithMoreBtn.dart';
import 'featuredPlant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // it will return the total size of screen
    print(size);
    print(size.height * 0.2);
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        HeaderWithSearchBar(size: size),
        TitleWithmoreBtn(
          textmain: "recomended",
          text: "more",
          press: () {},
        ),
        Recomendedplants(),
        TitleWithmoreBtn(
          textmain: "featured",
          text: "more",
          press: () {},
        ),
        featured(),
        SizedBox(height: kDefaultPadding)
      ],
    ));
  }
}
