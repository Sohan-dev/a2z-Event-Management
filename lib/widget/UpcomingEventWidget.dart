import 'package:a2z_event/models/eventModel.dart';
import 'package:a2z_event/models/upcomingEventModal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingEventWidget extends StatelessWidget {
  const UpcomingEventWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final UpcomingEventItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Text(
                    item.time,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              child: Text(
                item.title,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Image(
                    image: AssetImage('assets/icons/person.png'),
                    height: 15,
                    width: 15,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Text(
                    item.details.name,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFFA6A6A6),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Image(
                    image: AssetImage('assets/icons/phone.png'),
                    height: 15,
                    width: 15,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Text(
                    item.details.phone,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFFA6A6A6),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Image(
                    image: AssetImage('assets/icons/location.png'),
                    height: 15,
                    width: 15,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Text(
                    item.details.address,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFFA6A6A6),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Image(
                    image: AssetImage('assets/icons/cash.png'),
                    height: 15,
                    width: 15,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Text(
                    "Amount: ₹${item.details.amount}",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFFA6A6A6),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'View Payment',
                      style: TextStyle(
                        color: Color(0xFFFF833E),
                      ),
                    ),
                  ),
                )
              ],
            )
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