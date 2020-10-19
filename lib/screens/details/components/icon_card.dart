import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
class IconCard extends StatelessWidget {
  const IconCard({
    Key key, this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      width: 62,
      height: 62,
      decoration: BoxDecoration(color: kBackgroundColor, boxShadow: [
        BoxShadow(
          color: kPrimaryColor.withOpacity(0.22),
          offset: Offset(0, 10),
          blurRadius: 22,
        ),
        BoxShadow(
          offset: Offset(-15, -15),
          blurRadius: 20,
          color: Colors.white,
        )
      ]),
      child: SvgPicture.asset(image),
    );
  }
}
