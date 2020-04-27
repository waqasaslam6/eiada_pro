import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Licenses extends StatefulWidget {
  @override
  _LicensesState createState() => _LicensesState();
}

class _LicensesState extends State<Licenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _buildHeader(context),
        _buildBody(context),
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
          height: 100,
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
                            Image.asset("assets/icons/NoPath - Copy (-3.png"),
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
                        "Youssef Karim",
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        "Licenses",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
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

Widget _buildBody(context) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          child: FullScreenWidget(
            backgroundColor: Colors.transparent,
            backgroundIsTransparent: false,
            child: Center(
              child: Hero(
                tag: "",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/icons/8810310_orig.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
