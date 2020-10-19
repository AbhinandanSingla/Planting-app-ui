import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/detail_screen.dart';

import '../InnerText.dart';
import '../constants.dart';

class Recomendedplants extends StatelessWidget {
  const Recomendedplants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          recomented(
            image: kimages,
            title: kTitle,
            country: kcountry,
            price: price,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: kTitle,
                      country: kcountry,
                      price: price,
                    ),
                  ));
            },
          ),
          recomented(
            image: kimage2,
            title: kTitle,
            country: kcountry,
            price: price,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: kTitle,
                      country: kcountry,
                      price: price,
                    ),
                  ));
            },
          ),
          recomented(
            image: kimage3,
            title: kTitle,
            country: kcountry,
            price: price,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: kTitle,
                      country: kcountry,
                      price: price,
                    ),
                  ));
            },
          ),
          recomented(
            image: kimages,
            title: kTitle,
            country: kcountry,
            price: price,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: kTitle,
                      country: kcountry,
                      price: price,
                    ),
                  ));
            },
          ),
          recomented(
            image: kimage2,
            title: kTitle,
            country: kcountry,
            price: price,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: kTitle,
                      country: kcountry,
                      price: price,
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class recomented extends StatelessWidget {
  const recomented({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4, // means 40%
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ]),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
