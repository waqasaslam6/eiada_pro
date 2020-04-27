import 'package:eiadaenglish/pages/Messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NoMessages extends StatefulWidget {
  @override
  _NoMessagesState createState() => _NoMessagesState();
}

class _NoMessagesState extends State<NoMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyLayout());
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
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
                        "Messages",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Image.asset(
                        "assets/icons/bell.png",
                        //  color: Colors.black,
                        scale: 2.5,
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
                ]),
          ),
        ),
      ),
    ],
  );
}

Widget _myListView(BuildContext context) {
  return Column(
    children: <Widget>[
      _buildHeader(context),
      Expanded(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Messages()));
            },
            child: Image.asset("assets/images/no-messages.PNG")),
      ),
    ],
  );
}
