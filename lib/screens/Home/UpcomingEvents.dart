import 'dart:convert';

import 'package:a2z_event/models/upcomingEventModal.dart';
import 'package:a2z_event/widget/UpcomingEventWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingEvent extends StatefulWidget {
  const UpcomingEvent({super.key});

  @override
  State<UpcomingEvent> createState() => _UpcomingEventState();
}

class _UpcomingEventState extends State<UpcomingEvent> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final eventJson =
        await rootBundle.loadString('assets/files/upcomingEvent.json');
    final decodeJson = jsonDecode(eventJson);

    var productsData = decodeJson['upcomingEvents'];

    UpcomingEventModel.item = List.from(productsData)
        .map<UpcomingEventItem>((e) => UpcomingEventItem.fromMap(e))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   iconTheme: const IconThemeData(color: Colors.green),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.add_alert_rounded),
      //       tooltip: 'Show Notifications',
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //           const SnackBar(
      //             content: Text('This is a snackbar'),
      //           ),
      //         );
      //       },
      //     ),
      //     const Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: CircleAvatar(
      //         backgroundImage: NetworkImage(
      //             'https://rukminim1.flixcart.com/image/612/612/kqy3rm80/vehicle-lubricant/f/q/k/1-7100-4t-10w50-motul-original-imag4u8vn4xtxexf.jpeg?q=70'),
      //       ),
      //     )
      //   ],
      // ),

      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: TextStyle(
                            fontSize: 16.0,
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
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 58.0, right: 20.0, top: 20.0),
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
                            'This Week',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: (UpcomingEventModel.item != null &&
                    UpcomingEventModel.item.isNotEmpty)
                ? ListView.builder(
                    itemCount: UpcomingEventModel.item.length,
                    itemBuilder: (context, index) => UpcomingEventWidget(
                        item: UpcomingEventModel.item[index]),
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
