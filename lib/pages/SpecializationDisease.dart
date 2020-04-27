import 'package:calendar_strip/calendar_strip.dart';
import 'package:eiadaenglish/pages/Profile.dart';
import 'package:eiadaenglish/pages/address/AddressList.dart';
import 'package:eiadaenglish/pages/profile/ChatBanned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SpecializationDisease extends StatefulWidget {
  @override
  _SpecializationDiseaseState createState() => _SpecializationDiseaseState();
}

class _SpecializationDiseaseState extends State<SpecializationDisease> {
  @override


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

  String selected = "Selected";

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
                              builder: (context) => AddressList()));
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

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: MaterialButton(
            onPressed: () {
              _showModalSheet(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
            ),
            minWidth: MediaQuery.of(context).size.width,
            height: 45,
            child: Text(
              "Next",
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(0.0, 1.0),
                        blurRadius: 5.0, //(x,y)
                      )
                    ],
                    border: Border.all(color: Colors.greenAccent),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    )),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      "assets/icons/loupe-1.png",
                      scale: 2.5,
                    ),
                    hintText: "Search here for disease",
                    //    labelText: "search here for disease",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      _buildDiseaseSelect(context),
                      //  _buildSender(context),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDiseaseSelect(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
    child: Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Feeling sick / Infections / Injuries",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            "Abrastions",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    ),
  );
}

Widget _buildSender(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              height: 40,
              child: Text(
                "Yes. Offer is currently available, what do you want?",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "10:50 AM",
              style: TextStyle(fontSize: 8, color: Colors.grey),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildHeader(context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 80,
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
            padding: const EdgeInsets.only(left: 2, right: 8, top: 5),
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
                      "specialization and disease",
                      style: TextStyle(
                          color: Color(0xff2f424f),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "what is your concern?",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

void _showPreventedModel(context) {
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
            padding:
                const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "assets/icons/file (-1.png",
                  scale: 3.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Prevented",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Awaiting acceptance of the request from the service provider",
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
                              builder: (context) => ChatBanned()));
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

void _showModalSheet(context) {
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
                  "block",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Do you want to confirm the request?",
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
