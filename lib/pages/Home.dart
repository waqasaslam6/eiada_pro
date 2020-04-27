import 'dart:io';

import 'package:circular_check_box/circular_check_box.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/NoMessages.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:eiadaenglish/pages/Profile.dart';
import 'package:eiadaenglish/pages/Reservation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _selectedIndex = 0;
  final _pageOptions = [
    Home(),
    Reservation(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<bool> _onBackPressed() async {
    // Your back press code here...
    _showModalSheet(context);
    setState(() {});
  }

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

// Main Build Method
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        //bottomNavigationBar: _buildNavigation(_selectedIndex, _onItemTapped),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildHeader(context),
              _buildBody(context),
              // _buildBody(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildBody(context) {
  double blur = 5.0;
  return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
      child: ListView.builder(
          itemCount: 25,
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
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: <Widget>[
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircularProfileAvatar(
                                  '',
                                  child: Image.asset("assets/pro/asset-6.png"),
                                  borderColor: Theme.of(context).primaryColor,
                                  borderWidth: 0.5,
                                  elevation: 0,
                                  radius: 25,
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
                                  'Ethan Jackson',
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
                                      "assets/icons/location.png",
                                      color: Colors.grey,
                                      scale: 2.5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Justice, Shaikh Zayed, Paris',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ],
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
                                      '8:30 pm',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "assets/icons/calendar-32.png",
                                      color: Colors.grey,
                                      scale: 2.5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'October 30',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Text(
                              '3 minutes ago',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: OutlineButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(6.0),
                                ),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                                color: Theme.of(context).primaryColor,
                                onPressed: () {
                                  _showRejectedSheet(context);
                                },
                                child: Text(
                                  "Reject",
                                  style: TextStyle(
                                    fontSize: 12,
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
                                  borderRadius: new BorderRadius.circular(6.0),
                                ),
                                color: Theme.of(context).primaryColor,
                                onPressed: () {_showApprovedDialog(context);},
                                child: Text(
                                  "Approve",
                                  style: TextStyle(
                                    fontSize: 12,
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
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }));
}


void _showApprovedDialog(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.36,
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
            padding:
            const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "assets/pro/check (2).png",
                  scale: 3.5,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Successfully Approved",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "You have successfully approved request",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {

                    },
                    child: Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        // fontWeight: FontWeight.w600,
                        // fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          padding: EdgeInsets.all(0.0),
        );
      });
}
void _showRejectedSheet(context) {
  bool selectENG = false;
  bool selectARB = false;
  bool selectSPN = false;
  bool selectITY = false;
  Color textColor = Colors.grey;

  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor,
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Request Rejected",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.grey[900]),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    iconSize: 20,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Give us feedback",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Why you reject request",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Time clashing issue',
                        style: TextStyle(color: textColor),
                      ),
                      leading: CircularCheckBox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: selectENG,
                        inactiveColor: Colors.grey,
                        activeColor: Colors.greenAccent,
                        onChanged: (bool value) {
//                          setState(() {
//                            selectENG = !selectENG;
//                            textColor = Theme.of(context).primaryColor;
//                          });
                        },
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Traffic issue', style: TextStyle(color: textColor)),
                      leading: CircularCheckBox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: selectARB,
                        inactiveColor: Colors.grey,
                        activeColor: Colors.greenAccent,
                        onChanged: (bool value) {
//                          setState(() {
//                            selectARB = !selectARB;
//                            textColor = Theme.of(context).primaryColor;
//                          });
                        },
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Remote place', style: TextStyle(color: textColor)),
                      leading: CircularCheckBox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: selectSPN,
                        inactiveColor: Colors.grey,
                        activeColor: Colors.greenAccent,
                        onChanged: (bool value) {
//                          setState(() {
//                            selectSPN = !selectSPN;
//                            textColor = Theme.of(context).primaryColor;
//                          });
                        },
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Others', style: TextStyle(color: textColor)),
                      leading: CircularCheckBox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: selectITY,
                        inactiveColor: Colors.grey,
                        activeColor: Colors.greenAccent,
                        onChanged: (bool value) {
//                          setState(() {
//                            selectITY = !selectITY;
//                            textColor = Theme.of(context).primaryColor;
//                          });
                        },
                      ),

                    ),
                  ],
                ),
              ),

              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return Container(
                            constraints: BoxConstraints(
                              maxHeight: MediaQuery.of(context).size.height * 0.36,
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
                              padding:
                              const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/pro/paper.png",
                                    scale: 3.5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "request rejected",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.grey[900]),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "You have rejected patient request",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 45,
                                    width: MediaQuery.of(context).size.width,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(8.0),
                                      ),
                                      color: Theme.of(context).primaryColor,
                                      onPressed: () {

                                      },
                                      child: Text(
                                        "Done",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          // fontWeight: FontWeight.w600,
                                          // fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            padding: EdgeInsets.all(0.0),
                          );
                        });
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      // fontWeight: FontWeight.w600,
                      // fontSize: 20.0,
                    ),
                  ),
                ),
              ),


            ],
          ),
          padding: EdgeInsets.only(
            left: 15,
            top: 10,
            bottom: 10,
            right: 15,
          ),
        );
      });
}
Widget _buildNavigation(_selectedIndex, _onItemTapped) {
  return BottomNavigationBar(
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    elevation: 10,
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/home (-1.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text('Home'),
        ),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/calendarok.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('Reservation'),
        ),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/file.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('Reports'),
        ),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/settings (-1.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('Setting'),
        ),
      ),
    ],
  );
}

Widget _buildHeader(context) {
  return Container(
    height: 150,
    // width: MediaQuery.of(context).size.width,
    child: Stack(
      children: <Widget>[
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/home_top.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.6),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircularProfileAvatar(
                    '',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Image.asset("assets/icons/NoPath - Copy (14).png"),
                    // borderColor: Colors.purpleAccent,
                    borderWidth: 1,
                    elevation: 0,
                    radius: 16,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Text(
                      "Dr. Randy Ellis",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications()));
                    },
                    child: Image.asset(
                      "assets/icons/bell.png",
                      color: Colors.white,
                      scale: 2.5,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NoMessages()));
                    },
                    child: Image.asset(
                      "assets/icons/envelope (-12.png",
                      color: Colors.white,
                      scale: 2.5,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(),
              ),
              Text(
                "Hello",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Text(
                "Welcome To EIADA Health Care",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
