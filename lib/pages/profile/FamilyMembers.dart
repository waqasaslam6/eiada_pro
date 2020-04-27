import 'package:eiadaenglish/pages/profile/addFamilyMember.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FamilyMembers extends StatefulWidget {
  @override
  _FamilyMembersState createState() => _FamilyMembersState();
}

class _FamilyMembersState extends State<FamilyMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 10,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addFamilyMember()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
              ),
              minWidth: MediaQuery.of(context).size.width,
              height: 45,
              child: Text(
                "Add a member",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              color: Color(0xfff93c88),
            ),
          ),
        ),
        body: BodyLayout());
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
                _buildBody(context, "assets/icons/housewife-4.png", "Myself",
                    "Nick Vargas", "26 Year", () {}),
                _buildBody(context, "assets/icons/housewife (-2.png", "My Wife",
                    "Emma Hoffman", "27 Year", () {}),
                _buildBody(context, "assets/icons/grandmother (-2.png",
                    "My Mother", "Alice Hawkins", "52 Year", () {}),
                _buildBody(context, "assets/icons/grandmother (-2.png",
                    "My Father", "Mike Evans", "57 Year", () {}),
                _buildBody(context, "assets/icons/baby-1.png", "Children",
                    "Brandon Wood", "4 Year", () {}),
                _buildBody(context, "assets/icons/users-2.png",
                    "Others (My sister)", "Kelly Young", "21 Year", () {}),
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
                        "Family members",
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

Widget _buildBody(context, String icon, String text, String name, String age,
    Function openIt) {
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
          padding: EdgeInsets.all(25),
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
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$age",
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
