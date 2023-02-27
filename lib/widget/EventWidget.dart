import 'package:a2z_event/models/eventModel.dart';
import 'package:a2z_event/screens/Event/EventDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final EventItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 1,
      child: GestureDetector(
        onTap: (() {
          print(item);

          Navigator.of(context).pushNamed(Routes.eventDetailsRoute);
        }),
        child: Row(
          children: [
            const SizedBox(
              height: 70,
              width: 70,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(Icons.calendar_month_outlined,
                    color: Color(0xFF17A2F2)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    item.date.toString(),
                    style: TextStyle(
                        color: const Color(0xFF17A2F2),
                        fontSize: 15,
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    item.title,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      item.description,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Text(
                item.time,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


 // ListTile(
          //   onTap: () => {},
          //   leading: const Icon(
          //     Icons.calendar_month_outlined,
          //     color: Color(0xFF17A2F2),
          //   ),
          //   title: Text(item.title),
          //   subtitle: Text(item.description),
          //   trailing: Text(item.time),
          // ),