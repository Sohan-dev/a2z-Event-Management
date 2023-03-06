import 'dart:convert';
import 'dart:ui';

import 'package:a2z_event/models/eventModel.dart';
import 'package:a2z_event/widget/EventWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../Navigation/BottomNavigation.dart';
import '../../utils/routes.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  var screenIndex = 0;

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final eventJson = await rootBundle.loadString('assets/files/event.json');
    final decodeJson = jsonDecode(eventJson);
    if (kDebugMode) {
      print(decodeJson);
    }
    var productsData = decodeJson['eventData'];

    EventModel.item = List.from(productsData)
        .map<EventItem>((e) => EventItem.fromMap(e))
        .toList();

    setState(() {});
  }

  void updateId(int newId) {
    print(newId);
    // setState(() {
    //   screenIndex = newId;
    // });
  }

  @override
  Widget build(BuildContext context) {
    Widget calendarView = Container(
      margin: const EdgeInsets.only(left: 10.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFB0B0B0),
              ),
            ),
            child: Center(
              child: Text(
                '16',
                style: TextStyle(
                    color: const Color(0xFF1B2641),
                    fontFamily: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '17',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '18',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '18',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '19',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '20',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '21',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '22',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '23',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '24',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '25',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '26',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '27',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB0B0B0),
                ),
              ),
              child: Center(
                child: Text(
                  '28',
                  style: TextStyle(
                      color: const Color(0xFF1B2641),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monday,',
                        style: TextStyle(
                            color: Color(0xFFB7B7B7),
                            fontSize: 16.0,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodySmall)
                                .fontFamily),
                      ),
                      Text(
                        'February 2023',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodySmall)
                                .fontFamily),
                        textScaleFactor: 1.2,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 58.0, right: 20.0, top: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.addEvent);
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B2641),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Add Event',
                            style: TextStyle(color: Colors.white),
                          ),
                          // Icon(
                          //   Icons.arrow_drop_down,
                          //   color: Colors.white,
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: calendarView,
          ),
          Expanded(
            child: (EventModel.item != null && EventModel.item.isNotEmpty)
                ? ListView.builder(
                    itemCount: EventModel.item.length,
                    itemBuilder: (context, index) =>
                        EventWidget(item: EventModel.item[index]),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }
}
