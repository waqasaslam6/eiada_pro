import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:eiadaenglish/pages/profile/LinkBank.dart';

class BankAccounts extends StatefulWidget {
  @override
  _BankAccountsState createState() => _BankAccountsState();
}

class _BankAccountsState extends State<BankAccounts> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Padding(
          padding:
          const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>LinkBank()
              ));
            },
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
      body: Column(
        children: <Widget>[
          _buildHeader(context),
          SizedBox(height: 50,),
          Image.asset(
            "assets/images/no-banks.PNG",

            width: MediaQuery.of(context).size.width,
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
                        "Bank Accounts",
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
