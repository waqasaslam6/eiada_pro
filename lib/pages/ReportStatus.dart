import 'package:eiadaenglish/pages/ReportDetails.dart';
import 'package:eiadaenglish/pages/profile/editPassword.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReportStatus extends StatefulWidget {
  @override
  _ReportStatusState createState() => _ReportStatusState();
}

class _ReportStatusState extends State<ReportStatus> {
  @override
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(context),
            Container(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RichText(
                        text: TextSpan(
                            text: 'Reports for',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Ethan Jackson',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // open desired screen
                                    }),
                            ]),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                 ]
            ),
            ),
            Container(padding: EdgeInsets.only(left: 15 ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(5),
                        child: RichText(
                          text: TextSpan(
                              text: 'consulted at',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' 6:00 PM on December 02,2019',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // open desired screen
                                      }),
                              ]),
                        )),


                    _buildBody(context, "assets/icons/NoPath - Copy (-13.png",
                        "You edited a report", "just now", () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ReportDetails()));
                        }),
                    _buildBody(context, "assets/icons/NoPath - Copy (-13.png",
                        "You edited a report", "just now", () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ReportDetails()));
                        }),
                    _buildBody(context, "assets/icons/NoPath - Copy (-13.png",
                        "You edited a report", "just now", () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ReportDetails()));
                        }),

                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: 50,
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
                        "Reports",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
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

Widget _buildBody(
    context, String icon, String text, String name, Function openIt) {
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
          padding: EdgeInsets.all(20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    "$icon",
                    scale: 3,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "$text",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$name",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(),
                ),
                IconButton(
                  onPressed: openIt,
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
