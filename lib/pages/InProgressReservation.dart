import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/CompletedReservation.dart';
import 'package:eiadaenglish/pages/Home.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:eiadaenglish/pages/Reports.dart';
import 'package:eiadaenglish/pages/Reservation.dart';
import 'package:eiadaenglish/pages/Setting.dart';
import 'package:eiadaenglish/pages/Slots.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InProgressReservation extends StatefulWidget {
  @override
  _InProgressReservationState createState() => _InProgressReservationState();
}

class _InProgressReservationState extends State<InProgressReservation> {
  @override
  int _selectedIndex = 1;
  final _pageOptions = [
    Home(),
    Reservation(),
    Slots(),
    Reports(),
    Setting(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _buildNavigation(_selectedIndex, _onItemTapped),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildHeader(context),
              Divider(
                height: 10,
              ),
              _buildBody(context),
            ],
          ),
        ));
  }
}

Widget _buildHeader(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircularProfileAvatar(
              '',
              child: Image.asset("assets/icons/NoPath - Copy (14).png"),
              backgroundColor: Colors.pinkAccent,
              // borderColor: Colors.purpleAccent,
              borderWidth: 1,
              elevation: 0,
              radius: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Dr. Randy Ellis",
              style: TextStyle(
                  color: Color(0xff2f424f),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SizedBox(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
              child: Image.asset(
                "assets/icons/bell.png",
                //  color: Colors.black,
                scale: 2.5,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/icons/envelope (-12.png",
              //    color: Colors.black,
              scale: 2.5,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Text(
              "Reservation",
              style: TextStyle(
                  color: Color(0xff2f424f),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Flexible(
              child: Container(
                child: Text(
                  "Here there are all approved and completed requests",
                  style: TextStyle(
                    color: Colors.grey,
                    //fontSize: 24,
                    //   fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 40,
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: Text(
                      "Approved Reservation",
                      style: TextStyle(
                        color: Colors.white,
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                  ),
                  child: OutlineButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompletedReservation()));
                    },
                    child: Text(
                      "Completed Reservation",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        //   fontSize: 20.0,
                        //   fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildBody(context) {
  double blur = 6.0;
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
                        color: Colors.grey[300],
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
                                  "assets/icons/NoPath - Copy (-1.png"),
                              borderColor: Theme.of(context).primaryColor,
                              borderWidth: 0.5,
                              elevation: 0,
                              radius: 30,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
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
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '2 minutes to go',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Text(
                                'Reached',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
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
          }));
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
        icon: ImageIcon(AssetImage("assets/pro/add (1).png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('slot'),
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
