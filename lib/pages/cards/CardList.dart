import 'package:eiadaenglish/Widgets/DropDownSelectItem.dart';
import 'package:eiadaenglish/pages/TransactionHistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
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
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TransactionHistory()));
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
                                              Text(
                                                '**** **** **** 4752',
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
                                              Text(
                                                'Ronnie Carpenter',
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
                                              Text(
                                                'Expires : 12/21',
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
                                          scale: 2.5,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Column(
                                                      children: <Widget>[
                                                        Image.asset(
                                                          "assets/icons/danger.png",
                                                          scale: 2,
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Text(
                                                          "delete card",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
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
                                                            "by removing card you will no longer be able to see transaction",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .pinkAccent,
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
                                                                  .center,
                                                          children: <Widget>[
                                                            MaterialButton(
                                                              height: 45,
                                                              minWidth: 120,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    new BorderRadius
                                                                            .circular(
                                                                        10.0),
                                                              ),
                                                              child: Text(
                                                                "Yes",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        20),
                                                              ),
                                                              color: Colors.red,
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
                                                                                height: 20,
                                                                              ),
                                                                              MaterialButton(
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: new BorderRadius.circular(10.0),
                                                                                ),
                                                                                color: Theme.of(context).primaryColor,
                                                                                height: 45,
                                                                                minWidth: MediaQuery.of(context).size.width,
                                                                                child: Text(
                                                                                  "Done",
                                                                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                                                                ),
                                                                                onPressed: () {
                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => CardList()));
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
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Container(
                                                              height: 45,
                                                              width: 120,
                                                              child:
                                                                  OutlineButton(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      new BorderRadius
                                                                              .circular(
                                                                          10.0),
                                                                ),
                                                                child: Text(
                                                                  "No",
                                                                  style: TextStyle(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                              ),
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
                      scale: 3,
                    ),
                    Text(
                      "Add card",
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
                        "Cards",
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
