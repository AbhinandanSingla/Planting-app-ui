import 'package:flutter/material.dart';

import 'components/body.dart';


class DetailScreen extends StatelessWidget {
  String title,country,image;
  int price;
  DetailScreen({
    Key key, this.title, this.country, this.price,this.image
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(title: this.title,price: this.price,country:this.country,image: this.image,),
    );
  }
}
