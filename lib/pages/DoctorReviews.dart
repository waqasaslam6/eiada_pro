import 'dart:io';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/Dashboard.dart';
import 'package:eiadaenglish/pages/DoctorProfile.dart';
import 'package:eiadaenglish/pages/profile/Chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rating_bar/rating_bar.dart';

class DoctorReviews extends StatefulWidget {
  @override
  _DoctorReviewsState createState() => _DoctorReviewsState();
}

class _DoctorReviewsState extends State<DoctorReviews> {
  @override
  double _ratingStar = 0;
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
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 20),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                minWidth: MediaQuery.of(context).size.width,
                height: 45,
                child: Text(
                  "Book Appointment",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                color: Color(0xfff93c88),
              ),
            ),
          ),
          body: Column(
            children: <Widget>[
              _buildHeader(context),
              _buildBody(context),
            ],
          )),
    );
  }
}

Widget _buildHeader(context) {
  double _ratingStar = 5.0;
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height * 0.40,
        color: Colors.white,
      ),
      Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                ),
              ),
              CircularProfileAvatar(
                '',
                child: Image.asset("assets/icons/NoPath - Copy (-21.png"),
                // borderColor: Colors.purpleAccent,
                borderWidth: 1,
                elevation: 0,
                radius: 40,
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Chat()
                  ));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(bottom: 6.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child:
                      Center(child: Image.asset("assets/icons/envelope (-8.png")),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Dr. Randy Ellis",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
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
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink[200]),
                    ),
                    child: OutlineButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorProfile()));
                      },
                      child: Text(
                        "details",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,

                          // fontWeight: FontWeight.w600,
                          // fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      child: Text(
                        "reviews",
                        style: TextStyle(
                          color: Colors.white,
                          //   fontSize: 20.0,
                          //   fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildBody(context) {
  double blur = 5.0;
  return Expanded(
    child: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Container(
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
                      border: Border.all(color: Colors.grey[200]),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CircularProfileAvatar(
                                '',
                                child: Image.asset(
                                    "assets/icons/NoPath - Copy (-2.png"),
                                borderColor: Theme.of(context).primaryColor,
                                borderWidth: 0.5,
                                elevation: 0,
                                radius: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Frank Cook',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/icons/clock (-2.png",
                                    color: Colors.grey,
                                    scale: 2.5,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'June 19',
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                """Easy English news in Level 1
are for beginners. In this level
we use only 1000""",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              );
            })),
  );
}
