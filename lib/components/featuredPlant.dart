import 'package:flutter/material.dart';

import '../constants.dart';


class featured extends StatelessWidget {
  const featured({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          featuredPlants(
            Image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
          featuredPlants(
            Image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          featuredPlants(
            Image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
          featuredPlants(
            Image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class featuredPlants extends StatelessWidget {
  const featuredPlants({
    Key key,
    this.Image,
    this.press,
  }) : super(key: key);
  final String Image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // it will return the total size of screen
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2),
          width: size.width * 0.8,
          height: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Image),
            ),
          )),
    );
  }
}
