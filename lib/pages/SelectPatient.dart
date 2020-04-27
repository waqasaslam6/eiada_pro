import 'package:eiadaenglish/pages/Home.dart';
import 'package:eiadaenglish/pages/Reservation.dart';
import 'package:eiadaenglish/pages/SpecializationDisease.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectPatient extends StatefulWidget {
  @override
  _SelectPatientState createState() => _SelectPatientState();
}

class _SelectPatientState extends State<SelectPatient> {
  @override
  int _selectedIndex = 0;
  final _pageOptions = [
    Home(),
    Reservation(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Main Build Method
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: _buildNavigation(_selectedIndex, _onItemTapped),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pinkAccent,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pinkAccent,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SpecializationDisease()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeader(context),
            _buildBody(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildBody(context) {
  double blur = 10.0;
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  // color: Theme.of(context).primaryColor,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0.0, 1.0),
                      blurRadius: blur, //(x,y)
                    )
                  ],
                  border: Border.all(color: Colors.pink[100]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
                height: 100,
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 2 -
                    30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/icons/housewife-2.png"),
                      ),
                    ),
                    Text(
                      "Myself",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(0.0, 1.0),
                        blurRadius: blur, //(x,y)
                      )
                    ],
                    border: Border.all(color: Colors.pink[100]),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    )),
                height: 100,
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 2 -
                    30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/icons/housewife (1).png"),
                      ),
                    ),
                    Text(
                      "My Wife",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0.0, 1.0),
                      blurRadius: blur, //(x,y)
                    )
                  ],
                  border: Border.all(color: Colors.pink[100]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  )),
              height: 100,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width / 2 -
                  30,
              child: InkWell(
                splashColor: Theme.of(context).primaryColor,
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/icons/grandmother (-1.png"),
                      ),
                    ),
                    Text(
                      "My Mother",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(0.0, 1.0),
                        blurRadius: blur, //(x,y)
                      )
                    ],
                    border: Border.all(color: Colors.pink[100]),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    )),
                height: 100,
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 2 -
                    30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/icons/grandfather-1.png"),
                      ),
                    ),
                    Text(
                      "My Father",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0.0, 1.0),
                      blurRadius: blur, //(x,y)
                    )
                  ],
                  border: Border.all(color: Colors.pink[100]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  )),
              height: 100,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width / 2 -
                  30,
              child: InkWell(
                splashColor: Theme.of(context).primaryColor,
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/icons/baby.png"),
                      ),
                    ),
                    Text(
                      "Children",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(0.0, 1.0),
                        blurRadius: blur, //(x,y)
                      )
                    ],
                    border: Border.all(color: Colors.pink[100]),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    )),
                height: 100,
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 2 -
                    30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/icons/grandfather-1.png"),
                      ),
                    ),
                    Text(
                      "Others",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget _buildNavigation(_selectedIndex, _onItemTapped) {
  return BottomNavigationBar(
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    elevation: 10,
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/home (-1.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text('Home'),
        ),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/calendarok.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('Reservation'),
        ),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/file.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('Reports'),
        ),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/icons/settings (-1.png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('Setting'),
        ),
      ),
    ],
  );
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          height: 70,
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
                      Text(
                        "Patient",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Determine your own patient!",
                        style: TextStyle(
                          color: Colors.grey,
                          //fontSize: 24,
                          //   fontWeight: FontWeight.w700),
                        ),
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
