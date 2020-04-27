import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:flutter/material.dart';
import 'package:eiadaenglish/pages/ReportStatus.dart';

class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: <Widget>[
          _buildHeader(context),
          _buildBody(context),
      ],
    ),
        ));
  }
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                offset: Offset(0.0, 10.0), //(x,y)
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
//                      CircularProfileAvatar(
//                        '',
//                        child:
//                            Image.asset("assets/icons/NoPath - Copy (-3.png"),
//                        backgroundColor: Colors.pinkAccent,
//                        // borderColor: Colors.purpleAccent,
//                        borderWidth: 1,
//                        elevation: 0,
//                        radius: 16,
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      Text(
//                        "Youssef Karim",
//                        style: TextStyle(
//                            color: Color(0xff2f424f),
//                            fontSize: 16,
//                            fontWeight: FontWeight.bold),
//                      ),
//                      Expanded(
//                        child: SizedBox(),
//                      ),
//                      GestureDetector(
//                        onTap: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => Notifications()));
//                        },
//                        child: Image.asset(
//                          "assets/icons/bell.png",
//                          //  color: Colors.black,
//                          scale: 2.5,
//                        ),
//                      ),
//                      SizedBox(
//                        width: 20,
//                      ),
//                      Image.asset(
//                        "assets/icons/envelope (-12.png",
//                        //    color: Colors.black,
//                        scale: 2.5,
//                      ),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Text(
                        "Reports",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),

                ]),
          ),
        ),
      ),
    ],
  );
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
                  padding: EdgeInsets.all(15),
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
//                                SizedBox(
//                                  height: 10,
//                                ),
//                                Row(
//                                  children: <Widget>[
//                                    Image.asset(
//                                      "assets/icons/location.png",
//                                      color: Colors.grey,
//                                      scale: 2.5,
//                                    ),
//                                    SizedBox(
//                                      width: 5,
//                                    ),
//                                    Text(
//                                      'Justice, Shaikh Zayed, Paris',
//                                      style: TextStyle(
//                                          fontSize: 14.0, color: Colors.grey),
//                                    ),
//                                  ],
//                                ),
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
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>ReportStatus()
                          ));
                        },
                        child: Text("View Patient Reports",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14
                        ),),
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
