import 'dart:io';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/Dashboard.dart';
import 'package:eiadaenglish/pages/EditProfile.dart';
import 'package:eiadaenglish/pages/LanguageSelect.dart';
import 'package:eiadaenglish/pages/address/NoAddress.dart';
import 'package:eiadaenglish/pages/cards/NoCards.dart';
import 'package:eiadaenglish/pages/Wallet.dart';
import 'package:eiadaenglish/pages/documents/UploadDocuments.dart';
import 'package:eiadaenglish/pages/profile/Chat.dart';
import 'package:eiadaenglish/pages/profile/BankAccounts.dart';
import 'package:eiadaenglish/pages/profile/FamilyMembers.dart';
import 'package:eiadaenglish/pages/profile/Reviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                            borderSide: BorderSide(color: Colors.greenAccent),
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
          body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeader(context),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  _buildBody(context, "assets/icons/tools.png", "Edit profile",
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  }),
                  _buildBody(context, "assets/icons/police-card.png",
                      "Upload documents", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UploadDocuments()));
                  }),
                  _buildBody(
                      context, "assets/icons/credit-card (1).png", "Wallet", () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Wallet()));
                  }),
                  _buildBody(
                      context, "assets/pro/bank (-1.png", "Bank Accounts", () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BankAccounts()));
                  }),
                  _buildBody(
                      context, "assets/icons/credit-card (1).png", "Reviews", () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Reviews()));
                  }),
                  _buildBody(context, "assets/icons/credit-card (1).png",
                      "Chat with admin", () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  }),
                  _buildBody(context, "assets/icons/logout-1.png", "Logout",
                      () {
                    _showModalSheet(context);
                  }),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

Widget _buildHeader(context) {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height * 0.30,
        color: Colors.black,
      ),
      Column(
        children: <Widget>[
          CircularProfileAvatar(
            '',
            child: Image.asset("assets/icons/NoPath - Copy (-13.png"),
            // borderColor: Colors.purpleAccent,
            borderWidth: 1,
            elevation: 0,
            radius: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Dr. Randy Ellis",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/icons/location.png",
                color: Colors.white,
                scale: 2.5,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "San Francisco",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
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
