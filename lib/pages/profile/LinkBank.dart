import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LinkBank extends StatefulWidget {
  @override
  _LinkBankState createState() => _LinkBankState();
}

class _LinkBankState extends State<LinkBank> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Padding(
          padding:
          const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
          child: MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
            ),
            minWidth: MediaQuery.of(context).size.width,
            height: 45,
            child: Text(
              "Link bank",
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

            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Full name as in Bank account"),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                         border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Bank name"),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "ABC",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Bank Address"),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "ABC",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Postal Code"),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "123",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Bank Account Number"),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "123",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Bank Swift"),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "123",
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                ],
              ),
            ),
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
                        "Link Bank",
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
