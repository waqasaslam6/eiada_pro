import 'package:eiadaenglish/Widgets/DropDownSelectItem.dart';
import 'package:eiadaenglish/pages/address/AddressList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  List<Item> places = <Item>[
    const Item('Home'),
    const Item('Work'),
    const Item('Others'),
  ];
  List<Item> cities = <Item>[
    const Item('Dubai'),
    const Item('Abu Dhabi'),
    const Item('Sharjah'),
    const Item('Al Ain'),
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
                    MaterialPageRoute(builder: (context) => AddressList()));
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
            ),
            minWidth: MediaQuery.of(context).size.width,
            height: 50,
            child: Text(
              "Confirm completion",
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
                    child: DropdownButtonFormField<Item>(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(
                          "assets/icons/home (-8.png",
                          scale: 2.5,
                        ),
                      ),
                      isExpanded: true,
                      hint: Text("Place"),
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
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                    child: DropdownButtonFormField<Item>(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(
                          "assets/icons/government-7.png",
                          scale: 2.0,
                        ),
                      ),
                      isExpanded: true,
                      hint: Text("City"),
                      value: selectedCity,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedCity = Value;
                        });
                      },
                      items: cities.map((Item user) {
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
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          prefixIcon: Image.asset(
                            "assets/icons/address (1).png",
                            scale: 2.5,
                          ),
                          hintText: "address",
                          labelText: "address"),
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
                            "assets/icons/condo-2.png",
                            scale: 2.5,
                          ),
                          hintText: "building number",
                          labelText: "building number"),
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
                            "assets/icons/stairs.png",
                            scale: 2.5,
                          ),
                          hintText: "floor number",
                          labelText: "floor number"),
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
                            "assets/icons/door.png",
                            scale: 2.5,
                          ),
                          hintText: "flat number",
                          labelText: "flat number"),
                    ),
                  ),
                  SizedBox(
                    height: 25,
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
                        "Add an address",
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
