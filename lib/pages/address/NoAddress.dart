import 'package:eiadaenglish/pages/Messages.dart';
import 'package:eiadaenglish/pages/address/AddAddress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NoAddress extends StatefulWidget {
  @override
  _NoAddressState createState() => _NoAddressState();
}

class _NoAddressState extends State<NoAddress> {
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
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[100],
                offset: Offset(0.0, 10.0), //(x,y)
                blurRadius: 1.0,
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
                        "Address",
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

Widget _myListView(BuildContext context) {
  return Column(
    children: <Widget>[
      _buildHeader(context),
      GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Messages()));
          },
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 15),
                child: Image.asset(
                  "assets/images/no-address.PNG",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => AddAddress()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  height: 45,
                  child: Text(
                    "Add an address",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          )),
    ],
  );
}
