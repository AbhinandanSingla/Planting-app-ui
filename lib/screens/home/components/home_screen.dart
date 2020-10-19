import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/body.dart';
import 'package:plant_app/constants.dart';

class HomeScreen extends StatelessWidget {
  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          appBarTheme: AppBarTheme(color: kPrimaryColor),
          brightness: Brightness.light),
      home: Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
              left: kDefaultPadding * 2,
              right: kDefaultPadding * 2,
              bottom: kDefaultPadding),
          height: 80,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            )
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  _showMyDialog(context);
                },
                icon: SvgPicture.asset("assets/icons/flower.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'), // adding icon
        onPressed: () {},
      ),
    );
  }
}
