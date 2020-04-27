import 'package:eiadaenglish/pages/documents/EmiratedID.dart';
import 'package:eiadaenglish/pages/documents/InsuranceID.dart';
import 'package:eiadaenglish/pages/documents/Passport.dart';
import 'package:eiadaenglish/pages/documents/DHALicense.dart';
import 'package:eiadaenglish/pages/documents/OtherDocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UploadDocuments extends StatefulWidget {
  @override
  _UploadDocumentsState createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyLayout());
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildHeader(context),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                _buildBody(
                    context, "assets/icons/tools.png", "Passport", "2515161251",
                    () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Passport()));
                }),
                _buildBody(context, "assets/icons/police-card.png",
                    "Emirated ID", "2515161251", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EmiratedID()));
                }),
                _buildBody(context, "assets/icons/police-card.png",
                    "DHA License", "2515161251", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DHALicense()));
                }),
                _buildBody(context, "assets/icons/police-card.png",
                    "Other Docs", "No documents added", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtherDocs()));
                    }),
              ],
            ),
          ),
        ],
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
                        "Upload Documents",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 22,
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
                    scale: 2.5,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "$text",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
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
