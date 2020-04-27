import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OtherDocs extends StatefulWidget {
  @override
  _OtherDocsState createState() => _OtherDocsState();
}

class _OtherDocsState extends State<OtherDocs> {
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  )),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    border: InputBorder.none,
                    prefixIcon: Image.asset(
                      "assets/icons/police-card.png",
                      scale: 2.0,
                    ),
                    hintText: "Document Name",
                    labelText: "Document Name"),
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: MaterialButton(
              onPressed: () {
//                setState(() {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => Dashboard()));
//                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
              ),
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: Text(
                "Upload Documents",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: MaterialButton(
              onPressed: () {
//                setState(() {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => Dashboard()));
//                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
              ),
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: Text(
                "Save changes",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
//          Container(
//            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
//            width: MediaQuery.of(context).size.width,
//            child: Column(
//              children: <Widget>[
//
//
//              ],
//            ),
//          ),
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
                        "Other Documents",
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
