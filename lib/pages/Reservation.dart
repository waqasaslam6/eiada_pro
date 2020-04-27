import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/CompletedReservation.dart';
import 'package:eiadaenglish/pages/InProgressReservation.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reservation extends StatefulWidget {
  @override
  _ReservationState createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
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
      ]));
}

Widget _buildBody(context) {
  return Container(
    padding: EdgeInsets.all(50),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => InProgressReservation()));
      },
      child: Image.asset(
        "assets/images/no-appointments.PNG",
        height: 250,
        width: MediaQuery.of(context).size.width,
      ),
    ),
  );
}
