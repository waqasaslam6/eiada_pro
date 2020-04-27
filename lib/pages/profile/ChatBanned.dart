import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/profile/Chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatBanned extends StatefulWidget {
  @override
  _ChatBannedState createState() => _ChatBannedState();
}

class _ChatBannedState extends State<ChatBanned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "You cannot speak to this person",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  _showModalSheet(context);
                },
                child: Text(
                  "Cancel ban?",
                  style: TextStyle(
                    color: Colors.greenAccent,
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      _buildReceiver(context),
                      _buildSender(context),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildReceiver(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
    child: Row(
      children: <Widget>[
        CircularProfileAvatar(
          '',
          child: Image.asset("assets/icons/picture-1.png"),
          // borderColor: Colors.purpleAccent,
          borderWidth: 1,
          elevation: 0,
          radius: 25,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              height: 40,
              child: Text(
                "Yes. Offer is currently available",
                style: TextStyle(color: Colors.grey[700], fontSize: 13),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "10:50 AM",
              style: TextStyle(fontSize: 8, color: Colors.grey),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildSender(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: Text(
                "Yes. Offer is currently available",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "10:50 AM",
              style: TextStyle(fontSize: 8, color: Colors.grey),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: 60,
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
            padding: const EdgeInsets.only(left: 2, right: 8, top: 5),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Dr. Louis Holland",
                          style: TextStyle(
                              color: Color(0xff2f424f),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "online",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
//                    Expanded(
//                      child: SizedBox(),
//                    ),
//                    IconButton(
//                      onPressed: () {
//                        _showModalSheet(context);
//                      },
//                      icon: Image.asset(
//                        "assets/icons/block.png",
//                        scale: 2.5,
//                      ),
//                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

void _showPreventedModel(context) {
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
                  "assets/icons/file (-1.png",
                  scale: 3.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Blocking canceled",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Awaiting acceptance of the request from the service provider",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 20,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chat()));
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
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Unblock",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Do you want to unblock?",
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
                            _showPreventedModel(context);
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
