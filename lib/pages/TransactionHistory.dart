import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TransactionHistory extends StatefulWidget {
  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 10,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    setState(() {});
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  height: 45,
                  child: Text(
                    "Delete transactions",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  color: Colors.red,
                ),
                Text(
                  "Total transactions",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  "\$782",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        body: BodyLayout());
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
                        "transaction history",
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
      Expanded(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('to Dr. Larry Hudson'),
              subtitle: Text('Your request has been accepted'),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "\$51",
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/icons/picture13644936513100.png",
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
            ),
            Divider(),
            ListTile(
              title: Text('to Dr. Larry Hudson'),
              subtitle: Text('Your request has been accepted'),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "\$51",
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/icons/picture13644936513100.png",
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
            ),
            Divider(),
            ListTile(
              title: Text('to Dr. Larry Hudson'),
              subtitle: Text('Your request has been accepted'),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "\$51",
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/icons/picture13644936513100.png",
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
            ),
            Divider(),
            ListTile(
              title: Text('to Dr. Larry Hudson'),
              subtitle: Text('Your request has been accepted'),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "\$51",
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              leading: CircleAvatar(
                child: Image.asset(
                  "assets/icons/picture13644936513100.png",
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
            ),
          ],
        ),
      ),
    ],
  );
}
