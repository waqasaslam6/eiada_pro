import 'package:eiadaenglish/Widgets/DropDownSelectItem.dart';
import 'package:eiadaenglish/pages/Login.dart';
import 'package:eiadaenglish/pages/SpecializationDisease.dart';
import 'package:eiadaenglish/pages/documents/UploadDocuments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String agreedate;
  var myFormat = DateFormat('d-MM-yyyy');
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = DateTime(picked.year, picked.month, picked.day);
        agreedate = selectedDate.toString();
      });
  }

  List<Item> models = <Item>[
    const Item('Gender'),
    const Item('Male'),
    const Item('Female')
  ];
  Item selectedModel;
  void _showModalSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.35,
            ),
            decoration: BoxDecoration(
              // color: Theme.of(context).primaryColor,
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    "assets/icons/like (-1.png",
                    scale: 3.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Created",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.grey[900]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your new account has been created successfully",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          // fontWeight: FontWeight.w600,
                          // fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            padding: EdgeInsets.all(0.0),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Image.asset(
            "assets/images/login-background.png",
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "You'll need a valid email to confirm your registration",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey[300]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                )),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      // contentPadding: const EdgeInsets.all(8.0),
                      prefixIcon: Image.asset("assets/icons/user.png"),
                      hintText: "Name",
                      labelText: "Name"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      //  contentPadding: const EdgeInsets.all(10.0),
                      prefixIcon: Image.asset("assets/icons/envelope.png"),
                      hintText: "Email",
                      labelText: "Email"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      //   contentPadding: const EdgeInsets.all(10.0),
                      prefixIcon: Image.asset("assets/icons/padlock.png"),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Password",
                      labelText: "Password"),
                  obscureText: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      //    contentPadding: const EdgeInsets.all(10.0),
                      prefixIcon: Image.asset("assets/icons/padlock.png"),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Re-type password",
                      labelText: "Re-type password"),
                  obscureText: true,
                ),
                DropdownButtonFormField<Item>(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/icons/users.png"),
                  ),
                  isExpanded: true,
                  hint: Text("Gender"),
                  value: selectedModel,
                  onChanged: (Item Value) {
                    setState(() {
                      selectedModel = Value;
                    });
                  },
                  items: models.map((Item user) {
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
                DropdownButtonFormField<Item>(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/icons/users.png"),
                  ),
                  isExpanded: true,
                  hint: Text("Doctor"),
                  value: selectedModel,
                  onChanged: (Item Value) {
                    setState(() {
                      selectedModel = Value;
                    });
                  },
                  items: models.map((Item user) {
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
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>SpecializationDisease()
                    ));
                  },
                  child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      //      contentPadding: const EdgeInsets.all(10.0),
                      hintText:
                          "specialzation and diseases",
                      //  hintText: "${myFormat.format(selectedDate.toLocal())}",
                      prefixIcon: Image.asset("assets/icons/babyboy.png"),
                    ),
                    // controller: firstName,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.left,
                    enableInteractiveSelection: false,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: MaterialButton(
              onPressed: () {
            //    _showModalSheet(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>UploadDocuments()
                ));
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
              ),
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "I already have an account",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ]));
  }
}
