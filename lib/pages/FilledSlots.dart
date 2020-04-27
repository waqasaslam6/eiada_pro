import 'package:calendar_strip/calendar_strip.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/CompletedReservation.dart';
import 'package:eiadaenglish/pages/Home.dart';
import 'package:eiadaenglish/pages/InProgressReservation.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:eiadaenglish/pages/Reports.dart';
import 'package:eiadaenglish/pages/Reservation.dart';
import 'package:eiadaenglish/pages/Setting.dart';
import 'package:eiadaenglish/pages/Slots.dart';
import 'package:eiadaenglish/pages/address/AddressList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilledSlots extends StatefulWidget {
  @override
  _FilledSlotsState createState() => _FilledSlotsState();
}

class _FilledSlotsState extends State<FilledSlots> {
  DateTime startDate = DateTime.now().subtract(Duration(days: 2));
  DateTime endDate = DateTime.now().add(Duration(days: 2));
  DateTime selectedDate = DateTime.now().subtract(Duration(days: 2));
  List<DateTime> markedDates = [
    DateTime.now().subtract(Duration(days: 1)),
    DateTime.now().subtract(Duration(days: 2)),
    DateTime.now().add(Duration(days: 4))
  ];

  onSelect(data) {
    print("Selected Date -> $data");
  }

  _monthNameWidget(monthName) {
    return Container(
      child: Text(
        monthName,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      padding: EdgeInsets.only(top: 8, bottom: 4),
    );
  }

  getMarkedIndicatorWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: EdgeInsets.only(left: 1, right: 1),
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.greenAccent),
      ),
      Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.greenAccent),
      )
    ]);
  }

  dateTileBuilder(
      date, selectedDate, rowIndex, dayName, isDateMarked, isDateOutOfRange) {
    bool isSelectedDate = date.compareTo(selectedDate) == 0;
    Color fontColor = isDateOutOfRange ? Colors.black87 : Colors.black87;
    TextStyle normalStyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: fontColor);
    TextStyle selectedStyle = TextStyle(
        fontSize: 17, fontWeight: FontWeight.w800, color: Colors.greenAccent);
    TextStyle dayNameStyle = TextStyle(fontSize: 14.5, color: fontColor);
    List<Widget> _children = [
      Text(dayName, style: dayNameStyle),
      SizedBox(
        height: 8,
      ),
      Text(date.day.toString(),
          style: !isSelectedDate ? normalStyle : selectedStyle),
    ];

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 5),
      decoration: BoxDecoration(
        color: !isSelectedDate ? Colors.transparent : Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: Column(
        children: _children,
      ),
    );
  }



  void _showModalSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              // color: Theme.of(context).primaryColor,
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Select Date & Time",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.grey[900]),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      iconSize: 20,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Choose the day and hour",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: CalendarStrip(
                      startDate: startDate,
                      endDate: endDate,
                      onDateSelected: onSelect,
                      dateTileBuilder: dateTileBuilder,
                      iconColor: Colors.black87,
                      monthNameWidget: _monthNameWidget,
                      markedDates: markedDates,
                      containerDecoration: BoxDecoration(color: Colors.white),
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Available Slot",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('8:00 am'),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('9:00 am'),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('10:00 am'),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('11:00 am'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('12:00 pm'),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('1:00 pm'),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('2:00 pm'),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('3:00 pm'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('4:00 pm'),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 70,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Text('5:00 pm'),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilledSlots()));
                    },
                    child: Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        // fontWeight: FontWeight.w600,
                        // fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(
              left: 15,
              top: 10,
              bottom: 10,
              right: 15,
            ),
          );
        });
  }
  int _selectedIndex = 2;
  final _pageOptions = [
    Home(),
    Reservation(),
    Slots(),
    Reports(),
    Setting(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _buildNavigation(_selectedIndex, _onItemTapped),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            _showModalSheet(context);
          },
          child: Icon(Icons.add,size: 40,),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildHeader(context),
              Divider(
                height: 10,
              ),
              _buildBody(context),
            ],
          ),
        ));
  }
}
void _showPreventedModel(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.36,
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
            padding:
            const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "assets/pro/XMLID_1775_.png",
                  scale: 3.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Deleted",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Delete Successful",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilledSlots()));
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
void _deleteModalSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: 150,
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
            padding:
            const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "delete",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Do you want to delete?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: OutlineButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                          borderSide: BorderSide(color: Colors.greenAccent),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "No",
                            style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).primaryColor,
                              // fontWeight: FontWeight.w600,
                              // fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {
                            _showPreventedModel(context);
                          },
                          child: Text(
                            "Yes",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              // fontWeight: FontWeight.w600,
                              // fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          padding: EdgeInsets.all(0.0),
        );
      });
}
Widget _buildHeader(context) {
  return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Row(
          children: <Widget>[
            CircularProfileAvatar(
              '',
              child: Image.asset("assets/icons/NoPath - Copy (14).png"),
              backgroundColor: Colors.greenAccent,
              // borderColor: Colors.purpleAccent,
              borderWidth: 1,
              elevation: 0,
              radius: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Dr. Randy Ellis",
              style: TextStyle(
                  color: Color(0xff2f424f),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SizedBox(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
              child: Image.asset(
                "assets/icons/bell.png",
                //  color: Colors.black,
                scale: 2.5,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/icons/envelope (-12.png",
              //    color: Colors.black,
              scale: 2.5,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Text(
              "slots",
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
            Flexible(
              child: Container(
                child: Text(
                  "Here you can add your available working times",
                  style: TextStyle(
                    color: Colors.grey,
                    //fontSize: 24,
                    //   fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),

      ]));
}

Widget _buildBody(context) {
  double blur = 5.0;
  return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    // color: Theme.of(context).primaryColor,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        offset: Offset(0.0, 1.0),
                        blurRadius: blur, //(x,y)
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
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Wednesday, January 14, 2020',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                  Text("5 Available slots",
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,

                                  ),),
                                  ],
                                ),

                              ],
                            ),
                            IconButton(
                              onPressed: ()
                              {
                                _deleteModalSheet(context);
                              },
                              icon:  Image.asset("assets/icons/trash.png",
                                scale: 2.2,),
                            ),

                          ]),


                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }));
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
        icon: ImageIcon(AssetImage("assets/pro/add (1).png")),
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('slot'),
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
