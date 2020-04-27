import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class editDOB extends StatefulWidget {
  @override
  _editDOBState createState() => _editDOBState();
}

class _editDOBState extends State<editDOB> {
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
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildHeader(context),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
              child: InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    //      contentPadding: const EdgeInsets.all(10.0),
                    hintText:
                        "Date of Birth : ${myFormat.format(selectedDate.toLocal())}",
                    //  hintText: "${myFormat.format(selectedDate.toLocal())}",
                    prefixIcon: Image.asset("assets/icons/babyboy.png"),
                  ),
                  // controller: firstName,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                  enableInteractiveSelection: false,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: MaterialButton(
              onPressed: () {
//                setState(() {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => Dashboard()));
//                });
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
              color: Theme.of(context).primaryColor,
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
                        "Date of Birth",
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
