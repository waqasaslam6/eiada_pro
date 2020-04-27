import 'package:calendar_strip/calendar_strip.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:eiadaenglish/pages/ConfirmAppointment.dart';
import 'package:eiadaenglish/pages/DoctorProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:rating_bar/rating_bar.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
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
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      ),
      Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
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

  double _lowerValue = 50;
  double _upperValue = 180;
  bool isNotify = false;
  @override
  double _ratingStar = 0;
  double _ratingStarLong = 0;
  double _ratingSmile = 0;
  void _showFilterSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.7,
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
                      "Filter",
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
                  "Filter the service providers to show you what you want",
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
                Text(
                  "SORT BY",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 100,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        // color: Theme.of(context).primaryColor,
                        color: Colors.white,
                        border: Border.all(color: Colors.grey[400]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        "Top Rated",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 100,
                          minHeight: 40,
                          minWidth: 70),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        // color: Theme.of(context).primaryColor,
                        color: Colors.white,
                        border: Border.all(color: Colors.grey[400]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        "Nearest Me",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
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
                Text(
                  "Determine the price",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                FlutterSlider(
                  values: [250],
                  max: 500,
                  min: 0,
                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    _lowerValue = lowerValue;
                    _upperValue = upperValue;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Available",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Available now emergency",
                      style: TextStyle(
                        color: Colors.greenAccent,
                      ),
                    ),
                    Switch(
                      value: isNotify,
                      onChanged: (value) {
                        setState(() {
                          isNotify = value;
                        });
                      },
                      activeTrackColor: Colors.greenAccent,
                      activeColor: Theme.of(context).primaryColor,
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
                      _showModalSheet(context);
                    },
                    child: Text(
                      "Book Appointment",
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
                      //TODO : Add Navigator
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmAppointment()));
                    },
                    child: Text(
                      "Book Appointment",
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

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    double blur = 5.0;
    return Scaffold(
        key: scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildHeader(context),
              Divider(
                height: 10,
              ),
              Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: ListView.builder(
                      itemCount: 25,
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
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            CircularProfileAvatar(
                                              '',
                                              child: Image.asset(
                                                  "assets/pro/NoPath - Copy (-1.png"),
                                              borderColor: Theme.of(context)
                                                  .primaryColor,
                                              borderWidth: 0.5,
                                              elevation: 0,
                                              radius: 30,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Dr. Randy Ellis',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            RatingBar(
                                              onRatingChanged: (rating) =>
                                                  setState(() =>
                                                  _ratingStar = rating),
                                              filledIcon: Icons.star,
                                              emptyIcon: Icons.star_border,
                                              size: 35,
                                            ),

                                          ],
                                        ),
                                        Expanded(
                                          child: SizedBox(),
                                        ),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontSize: 40.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ]),
                                  Divider(),
                                  SizedBox(height: 5,),
                                  Text(
                                    'perfectly in time, he have checked my son very well',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                          ],
                        );
                      })),
            ],
          ),
        ));
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
                blurRadius: 10.0,
              ),
            ],
          ),
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
                      "Reviews",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),

              ]),
        ),
      ),
    ],
  );
}
