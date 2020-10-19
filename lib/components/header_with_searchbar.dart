import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding) * 2.5,
      // it will cover 20% of our screen
      height: size.height * 0.2,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          height: size.height * 0.2 - 27,
          // color: kPrimaryColor,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  ' Patran PlantAssociations',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            color: Colors.black12,
                            blurRadius: 5)
                      ]),
                ),
              ),
              Spacer(), // it is giving space in a row
              Image.asset("assets/images/logo.png")
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search ",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        // disable the default border
                        focusedBorder: InputBorder.none,
                        // disable th focused border
                        // now sufflix is not working with suffix so we are using row
                        // suffixIcon:
                        // SvgPicture.asset("assets/icons/search.svg")
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              )),
        ),
      ]),
    );
  }
}
