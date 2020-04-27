import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class editGender extends StatefulWidget {
  @override
  _editGenderState createState() => _editGenderState();
}

class _editGenderState extends State<editGender> {
  @override
  bool selectENG = false;

  bool selectARB = false;

  bool selectSPN = false;

  bool selectITY = false;

  Color textColor = Colors.grey;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
          child: MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
            ),
            minWidth: MediaQuery.of(context).size.width,
            height: 45,
            child: Text(
              "Save changes",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          _buildHeader(context),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Male',
                    style: TextStyle(color: textColor),
                  ),
                  leading: CircularCheckBox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: selectENG,
                    inactiveColor: Colors.grey,
                    activeColor: Colors.greenAccent,
                    onChanged: (bool value) {
                      setState(() {
                        selectENG = !selectENG;
                        textColor = Theme.of(context).primaryColor;
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                ),
                Divider(),
                ListTile(
                  title: Text('Female', style: TextStyle(color: textColor)),
                  leading: CircularCheckBox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: selectARB,
                    inactiveColor: Colors.grey,
                    activeColor: Colors.pinkAccent,
                    onChanged: (bool value) {
                      setState(() {
                        selectARB = !selectARB;
                        textColor = Theme.of(context).primaryColor;
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                ),
                Divider(),
                ListTile(
                  title: Text('Other than that',
                      style: TextStyle(color: textColor)),
                  leading: CircularCheckBox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: selectSPN,
                    inactiveColor: Colors.grey,
                    activeColor: Colors.pinkAccent,
                    onChanged: (bool value) {
                      setState(() {
                        selectSPN = !selectSPN;
                        textColor = Theme.of(context).primaryColor;
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                ),
              ],
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
                        "Gender",
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
