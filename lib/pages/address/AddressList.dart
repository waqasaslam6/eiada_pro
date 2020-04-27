import 'package:eiadaenglish/Widgets/DropDownSelectItem.dart';
import 'package:eiadaenglish/pages/DoctorsList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddressList extends StatefulWidget {
  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
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

  bool isNotify = true;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeader(context),
            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorsList()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Theme.of(context).primaryColor,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 6.0, //(x,y)
                                )
                              ],
                              border: Border.all(color: Colors.grey[200]),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                              ),
                            ),
                            padding: EdgeInsets.only(
                                left: 5, top: 20, bottom: 20, right: 5),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Image.asset(
                                                "assets/icons/home (-8.png",
                                                color: Colors.grey,
                                                scale: 3.2,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Home',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image.asset(
                                                "assets/icons/government-7.png",
                                                color: Colors.grey,
                                                scale: 2.5,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Dublin',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image.asset(
                                                "assets/icons/address (1).png",
                                                color: Colors.grey,
                                                scale: 3,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Mall Ring Road',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Switch(
                                        value: isNotify,
                                        onChanged: (value) {
                                          setState(() {
                                            isNotify = value;
                                          });
                                        },
                                        activeTrackColor:
                                            Colors.greenAccent,
                                        activeColor: Theme.of(context).primaryColor,
                                      ),
                                      IconButton(
                                        icon: Image.asset(
                                          "assets/icons/trash.png",
                                          color: Theme.of(context).primaryColor,
                                          scale: 2.5,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Center(
                                                      child: Text(
                                                        "delete",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20))),
                                                    //title: Center(child: Text("Info",style: TextStyle(color: Colors.black),)),
                                                    content: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: <Widget>[
                                                        Container(
                                                          padding:
                                                              EdgeInsets.all(5),
                                                          child: Text(
                                                            "Do you want to delete?",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[600],
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: <Widget>[
                                                            MaterialButton(
                                                              child: Text(
                                                                "Yes",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                              onPressed: () {
                                                                setState(() {
                                                                  showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (BuildContext
                                                                              context) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Center(
                                                                            child:
                                                                                Column(
                                                                              children: <Widget>[
                                                                                Image.asset(
                                                                                  "assets/icons/XMLID_-12.png",
                                                                                  scale: 2.5,
                                                                                  color: Theme.of(context).primaryColor,
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 10,
                                                                                ),
                                                                                Text(
                                                                                  "Deleted",
                                                                                  style: TextStyle(
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                                                          //title: Center(child: Text("Info",style: TextStyle(color: Colors.black),)),
                                                                          content:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children: <Widget>[
                                                                              Container(
                                                                                child: Text(
                                                                                  "Deletion Successful",
                                                                                  style: TextStyle(
                                                                                    color: Colors.grey[600],
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              MaterialButton(
                                                                                minWidth: MediaQuery.of(context).size.width,
                                                                                child: Text(
                                                                                  "Done",
                                                                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                                                                ),
                                                                                color: Theme.of(context).primaryColor,
                                                                                onPressed: () {
                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddressList()));
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          actions: <
                                                                              Widget>[],
                                                                        );
                                                                      });
                                                                });
                                                              },
                                                            ),
                                                            OutlineButton(
                                                              child: Text(
                                                                "No",
                                                                style: TextStyle(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    actions: <Widget>[],
                                                  );
                                                });
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                      ],
                    );
                  }),
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: Theme.of(context).primaryColor,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0, //(x,y)
                    )
                  ],
                  border: Border.all(color: Colors.grey[200]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
                padding:
                    EdgeInsets.only(left: 5, top: 20, bottom: 20, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset(
                      "assets/icons/plus.png",
                      color: Theme.of(context).primaryColor,
                      scale: 3,
                    ),
                    Text(
                      "Add an address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
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
                        "Address",
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
