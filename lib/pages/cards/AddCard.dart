import 'package:eiadaenglish/Widgets/DropDownSelectItem.dart';
import 'package:eiadaenglish/pages/cards/CardList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  List<Item> places = <Item>[
    const Item('Emirates'),
    const Item('Germany'),
    const Item('Saudia Arabia'),
  ];

  Item selectedPlace;
  Item selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
          child: MaterialButton(
            onPressed: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CardList()));
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
            ),
            minWidth: MediaQuery.of(context).size.width,
            height: 50,
            child: Text(
              "Add card",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeader(context),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    )),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          prefixIcon: Image.asset(
                            "assets/icons/credit-card (-1.png",
                            scale: 2.5,
                          ),
                          hintText: "card number",
                          labelText: "card number"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  //   contentPadding: const EdgeInsets.all(10.0),
                                  prefixIcon: Image.asset(
                                    "assets/icons/calendar-33.png",
                                    scale: 2.5,
                                  ),
                                  hintText: "MM/-YY",
                                  labelText: "MM/YY"),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  //  contentPadding: const EdgeInsets.all(10.0),
                                  prefixIcon: Image.asset(
                                    "assets/icons/credit-card (-7.png",
                                    scale: 2.5,
                                  ),
                                  hintText: "CVC",
                                  labelText: "CVC"),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          prefixIcon: Image.asset(
                            "assets/icons/user (1).png",
                            scale: 2.5,
                          ),
                          hintText: "Name on card",
                          labelText: "Name on card"),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                    child: DropdownButtonFormField<Item>(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(
                          "assets/icons/flag.png",
                          height: 10,
                          scale: 2.5,
                        ),
                      ),
                      isExpanded: true,
                      hint: Text("Country or region"),
                      value: selectedPlace,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedPlace = Value;
                        });
                      },
                      items: places.map((Item user) {
                        return DropdownMenuItem<Item>(
                          value: user,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ]),
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
                        "Add Card",
                        style: TextStyle(
                            color: Color(0xff2f424f),
                            fontSize: 20,
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
