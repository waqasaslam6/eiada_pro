import 'package:eiadaenglish/pages/LanguageSelect.dart';
import 'package:eiadaenglish/pages/SpecializationDisease.dart';
import 'package:eiadaenglish/pages/profile/editCareer.dart';
import 'package:eiadaenglish/pages/profile/editDOB.dart';
import 'package:eiadaenglish/pages/profile/editEmail.dart';
import 'package:eiadaenglish/pages/profile/editExperience.dart';
import 'package:eiadaenglish/pages/profile/editGender.dart';
import 'package:eiadaenglish/pages/profile/editHospital.dart';
import 'package:eiadaenglish/pages/profile/editName.dart';
import 'package:eiadaenglish/pages/profile/editPassword.dart';
import 'package:eiadaenglish/pages/profile/editPhone.dart';
import 'package:eiadaenglish/pages/profile/editPrice.dart';
import 'package:eiadaenglish/pages/profile/editUniversity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                _buildBody(context, "assets/icons/stethoscope-1.png", "Specialization and Diseases",
                    "heart", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SpecializationDisease()));
                    }),
                _buildBody(context, "assets/icons/user (-2.png", "Name",
                    "Chris Barnett", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => editName()));
                    }),
                _buildBody(context, "assets/pro/hospital.png", "Hospital",
                    "Bhutan", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => editHospital()));
                    }),
                _buildBody(context, "assets/pro/coin.png", "Service price",
                    "235 AED", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => editPrice()));
                    }),
                _buildBody(context, "assets/pro/first-aid-kit.png", "Experience",
                    "4 Years", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => editExperience()));
                    }),
                _buildBody(context, "assets/pro/mortarboard (-1.png", "University",
                    "Freie University Berlin", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => editUniversity()));
                    }),
                _buildBody(context, "assets/pro/mortarboard (-1.png", "Languages",
                    "Arabic, English, Spanish", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LanguageSelect()));
                    }),

                _buildBody(context, "assets/pro/XMLID_2003_.png", "Career",
                    "Short summary about yourself", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => editCareer()));
                    }),
                _buildBody(context, "assets/icons/envelope (-4.png", "Email",
                    "bobby.porter@mail.com", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editEmail()));
                }),
                _buildBody(
                    context, "assets/icons/users-1.png", "Gender", "Male", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editGender()));
                }),
                _buildBody(context, "assets/icons/baby-boy.png",
                    "Date of Birth", "10/01/1980", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editDOB()));
                }),
                _buildBody(context, "assets/icons/smartphone.png",
                    "Phone Number", "(531) 418-9694", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editPhone()));
                }),
                _buildBody(context, "assets/icons/padlock (-3.png",
                    "change Password", "********", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editPassword()));
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
                        "Edit profile",
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
          padding: EdgeInsets.all(15),
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
