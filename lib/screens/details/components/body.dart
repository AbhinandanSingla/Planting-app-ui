import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'Images_and_icons.dart';

// ignore: must_be_immutable
class DetailBody extends StatelessWidget {
  String title, country, image;
  int price;

  DetailBody({Key key, this.title, this.country, this.price, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImagesAndIcons(
            image: image,
          ),
          PricingAndTitle(title: title, price: price, country: country),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text("Buy Now",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white
                  ),),shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:Radius.circular(20))),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 84,
                  child: FlatButton(
                    color: Colors.white10,
                    onPressed: () {},
                    child: Text("add to cart".toUpperCase(),style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 18,
                      color: Colors.black.withOpacity(0.7)
                    ),),shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:Radius.circular(20))),
                  ),
                ),
                ),
            ],
          )
        ],
      ),
    );
  }
}

class PricingAndTitle extends StatelessWidget {
  const PricingAndTitle({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: kPrimaryColor, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "$country",
                    style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
