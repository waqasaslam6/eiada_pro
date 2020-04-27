import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyLayout());
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                offset: Offset(0.0, 10.0), //(x,y)
                blurRadius: 14.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.grey,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Image.asset(
                        "assets/icons/bell.png",
                        //  color: Colors.black,
                        scale: 2.5,
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
                ]),
          ),
        ),
      ),
    ],
  );
}

Widget _myListView(BuildContext context) {
  return Column(
    children: <Widget>[
      _buildHeader(context),
      Expanded(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Dr. Larry Hudson'),
              subtitle: Text('Your request has been accepted'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Now"),
                ],
              ),
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/icons/picture13644936513100.png",
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
            ),
            ListTile(
              title: Text('Dr. Ronnie Diaz'),
              subtitle: Text('The execution of the request is approaching'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Now"),
                ],
              ),
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/icons/shot_1299494564 (1).png",
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
            ),
            ListTile(
              title: Text('Dr. Chadd Bernett'),
              subtitle: Text(
                  'The server provider wants to start implementing service'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Now"),
                ],
              ),
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/icons/williamsburg_mobile_logo.png",
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
            ),
          ],
        ),
      ),
    ],
  );
}
