import 'package:eiadaenglish/Widgets/DropDownSelectItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class addFamilyMember extends StatefulWidget {
  @override
  _addFamilyMemberState createState() => _addFamilyMemberState();
}

class _addFamilyMemberState extends State<addFamilyMember> {
  List<Item> members = <Item>[
    const Item('My self'),
    const Item('My wife'),
    const Item('My mother'),
  ];
  Item selectedMember;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "assets/icons/user (-11.png",
                          scale: 2.0,
                        ),
                      ),
                      isExpanded: true,
                      hint: Text("My self"),
                      value: selectedMember,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedMember = Value;
                        });
                      },
                      items: members.map((Item user) {
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
                            "assets/icons/user (-11.png",
                            scale: 2.5,
                          ),
                          hintText: "Name",
                          labelText: "Name"),
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
                            "assets/icons/user (-11.png",
                            scale: 2.5,
                          ),
                          hintText: "Age",
                          labelText: "Age"),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: Text(
                  "Save changes",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                color: Color(0xfff93c88),
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
                        "Add a member",
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
