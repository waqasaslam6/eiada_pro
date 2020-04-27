import 'package:calendar_strip/calendar_strip.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/CompletedReservation.dart';
import 'package:eiadaenglish/pages/FilledSlots.dart';
import 'package:eiadaenglish/pages/InProgressReservation.dart';
import 'package:eiadaenglish/pages/Notifications.dart';
import 'package:eiadaenglish/pages/address/AddressList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Slots extends StatefulWidget {
  @override
  _SlotsState createState() => _SlotsState();
}

class _SlotsState extends State<Slots> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  return Container(
    padding: EdgeInsets.all(50),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FilledSlots()));
      },
      child: Image.asset(
        "assets/images/no-slots.PNG",
        height: 250,
        width: MediaQuery.of(context).size.width,
      ),
    ),
  );
}
