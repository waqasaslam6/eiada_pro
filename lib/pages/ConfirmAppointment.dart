import 'dart:io';

import 'package:eiadaenglish/pages/Dashboard.dart';
import 'package:eiadaenglish/pages/LanguageSelect.dart';
import 'package:eiadaenglish/pages/ReportDetails.dart';
import 'package:eiadaenglish/pages/cards/AddCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class ConfirmAppointment extends StatefulWidget {
  @override
  _ConfirmAppointmentState createState() => _ConfirmAppointmentState();
}

class _ConfirmAppointmentState extends State<ConfirmAppointment> {
  @override
  void _showModalSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            constraints: BoxConstraints(
              maxHeight: 150,
            ),
            decoration: BoxDecoration(
              // color: Theme.of(context).primaryColor,
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Exit",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.grey[900]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Do you want to exit the application?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: OutlineButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8.0),
                            ),
                            borderSide: BorderSide(color: Colors.pinkAccent),
                            color: Theme.of(context).primaryColor,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "No",
                              style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).primaryColor,
                                // fontWeight: FontWeight.w600,
                                // fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8.0),
                            ),
                            color: Theme.of(context).primaryColor,
                            onPressed: () {
                              exit(0);
                            },
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                // fontWeight: FontWeight.w600,
                                // fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            padding: EdgeInsets.all(0.0),
          );
        });
  }

  bool isNotify = true;
  bool isMessage = true;

  Future<bool> _onBackPressed() async {
    // Your back press code here...
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Dashboard()));

    setState(() {});
  }

  double blur = 5.0;
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 50,
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          "Cancel request",
                          style:
                              TextStyle(color: Colors.pinkAccent, fontSize: 18
                                  // fontWeight: FontWeight.w600,
                                  // fontSize: 20.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                        child: Text(
                          "Confirmation",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            //   fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildHeader(context),
              ],
            ),
          )),
    );
  }
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Image.asset(
            "assets/icons/NoPath - Copy (-22.png",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.all(10),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: Colors.grey[300])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Dr. Randy Ellis",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/icons/location.png",
                  color: Colors.grey,
                  scale: 2.5,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Mall Ring Road, 11835",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            RatingBar(
              filledIcon: Icons.star,
              emptyIcon: Icons.star_border,
              size: 18,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            _buildCard(context, "assets/icons/tools.png", "Medical report", () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ReportDetails()));
        }),
      ),
      Container(
        height: 200,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/icons/user (1).png",
                  scale: 2.5,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Patient name",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
              child: Text(
                "Jose Grey",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/icons/location.png",
                  scale: 2.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Address",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
              child: Text(
                "Al Barsha South, Dubai, United Arab Emirates",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 200,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/icons/calendar (-1.png",
                  scale: 2.5,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Starting date",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
              child: Text(
                "November 23",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/icons/clock (1).png",
                  scale: 1.5,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Starting time",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
              child: Text(
                "8:00 am",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 100,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/icons/money-bag.png",
                  scale: 2.5,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Total",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
              child: Text(
                "\$51",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 150,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/icons/credit-card (-1.png",
                  scale: 2.5,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Payment Method",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddCard()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: Text(
                  "Add a payment card",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                color: Color(0xfff93c88),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildBody(context, String icon, String text, Function openIt) {
  double blur = 5.0;
  return Column(
    children: <Widget>[
      GestureDetector(
        onTap: openIt,
        child: Container(
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                offset: Offset(0.0, 1.0),
                blurRadius: blur, //(x,y)
              )
            ],
            border: Border.all(color: Colors.grey[300]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
          padding: EdgeInsets.all(6),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    "$icon",
                    scale: 2.5,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "$text",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LanguageSelect()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ]),
        ),
      ),
      SizedBox(
        height: 15,
      ),
    ],
  );
}

Widget _buildCard(context, String icon, String text, Function openIt) {
  double blur = 5.0;
  return Column(
    children: <Widget>[
      GestureDetector(
        onTap: openIt,
        child: Container(
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                offset: Offset(0.0, 1.0),
                blurRadius: blur, //(x,y)
              )
            ],
            border: Border.all(color: Colors.grey[300]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
          padding: EdgeInsets.all(6),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    "$icon",
                    scale: 2.5,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "$text",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LanguageSelect()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ]),
        ),
      ),
      SizedBox(
        height: 15,
      ),
    ],
  );
}
