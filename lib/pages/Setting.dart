import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/LanguageSelect.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  bool isNotify = true;
  bool isMessage = true;

  double blur = 5.0;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _buildHeader(context),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LanguageSelect()));
                },
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          "assets/icons/translation.png",
                          height: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "language",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
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
                height: 18,
              ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/bell.png",
                        height: 30,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Notifications",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Show alerts on the home screen",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 12),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Switch(
                        value: isNotify,
                        onChanged: (value) {
                          setState(() {
                            isNotify = value;
                          });
                        },
                        activeTrackColor: Colors.greenAccent,
                        activeColor: Theme.of(context).primaryColor,
                      ),
                    ]),
              ),
              SizedBox(
                height: 18,
              ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/bell.png",
                        scale: 2.0,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "App Notifications",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Show alerts when you are closing app",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 12),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Switch(
                        value: isMessage,
                        onChanged: (value) {
                          setState(() {
                            isMessage = value;
                          });
                        },
                        activeTrackColor: Colors.greenAccent,
                        activeColor: Theme.of(context).primaryColor,
                      ),
                    ]),
              ),
              SizedBox(
                height: 18,
              ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/envelope (-6.png",
                        height: 15,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Messages",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Show messages on the home screen",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 12),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Switch(
                        value: isMessage,
                        onChanged: (value) {
                          setState(() {
                            isMessage = value;
                          });
                        },
                        activeTrackColor: Colors.greenAccent,
                        activeColor: Theme.of(context).primaryColor,
                      ),
                    ]),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          height: 120,
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
                      CircularProfileAvatar(
                        '',
                        child:
                            Image.asset("assets/icons/NoPath - Copy (14).png"),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifications()));
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
                        "Setting",
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
                      Text(
                        "How can we take care of you?",
                        style: TextStyle(
                          color: Colors.grey,
                          //fontSize: 24,
                          //   fontWeight: FontWeight.w700),
                        ),
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
