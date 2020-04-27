import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LanguageSelect extends StatefulWidget {
  @override
  _LanguageSelectState createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  bool selectENG = false;
  bool selectARB = false;
  bool selectSPN = false;
  bool selectITY = false;
  Color textColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _buildHeader(context),
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'English',
                  style: TextStyle(color: textColor),
                ),
                leading: CircularCheckBox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: selectENG,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.pinkAccent,
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
                title: Text('Arabic', style: TextStyle(color: textColor)),
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
                title: Text('Spanish', style: TextStyle(color: textColor)),
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
              Divider(),
              ListTile(
                title: Text('Italian', style: TextStyle(color: textColor)),
                leading: CircularCheckBox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: selectITY,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.pinkAccent,
                  onChanged: (bool value) {
                    setState(() {
                      selectITY = !selectITY;
                      textColor = Theme.of(context).primaryColor;
                    });
                  },
                ),
                contentPadding: EdgeInsets.only(left: 10, right: 10),
              ),
            ],
          ),
        ),
      ],
    ));
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
                        "language",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
//                      Expanded(
//                        child: SizedBox(),
//                      ),
//                      Image.asset(
//                        "assets/icons/bell.png",
//                        //  color: Colors.black,
//                        scale: 2.5,
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
                ]),
          ),
        ),
      ),
    ],
  );
}
