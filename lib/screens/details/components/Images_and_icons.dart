import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';



class ImagesAndIcons extends StatelessWidget {
  const ImagesAndIcons({
    Key key, this.image,
  }) : super(key: key);
final String image ;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row  (
          children: <Widget> [
            Expanded(
              child: Padding(
                padding:
                 EdgeInsets.only(top:kDefaultPadding * 3 ),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                    ),
                    Spacer(),
                    IconCard(
                      image: "assets/icons/sun.svg",
                    ),
                    IconCard(
                      image: "assets/icons/icon_4.svg",
                    ),
                    IconCard(
                      image: "assets/icons/icon_3.svg",
                    ),
                    IconCard(
                      image: "assets/icons/icon_2.svg",
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  )
                ],
                image: DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
