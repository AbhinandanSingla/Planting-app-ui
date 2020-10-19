import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithmoreBtn extends StatelessWidget {
  const TitleWithmoreBtn({
    Key key, this.text,this.textmain, this.press,
  }) : super(key: key);
  final String text ,textmain;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomText(text: textmain,),
          Spacer(),
          FlatButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: kPrimaryColor,
            shape:
            RoundedRectangleBorder(borderRadius
                : BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomText extends StatelessWidget {
  const TitleWithCustomText({
    Key key, this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
