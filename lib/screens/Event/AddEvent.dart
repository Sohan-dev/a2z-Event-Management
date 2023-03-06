import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  String? startDate;
  String? endDate;

  @override
  void initState() {
    startDate = "";
    endDate = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.green),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert_rounded),
            tooltip: 'Show Notifications',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('This is a snackbar'),
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://rukminim1.flixcart.com/image/612/612/kqy3rm80/vehicle-lubricant/f/q/k/1-7100-4t-10w50-motul-original-imag4u8vn4xtxexf.jpeg?q=70'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 25.0),
              child: Text(
                'Add an Event',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
            ),
            // Event Title
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Event Title',
                  labelStyle: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodySmall)
                          .fontFamily),
                  border: InputBorder.none,
                ),
              ),
            ),

            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 10.0,
                    left: 16.0,
                  ),
                  height: 55,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF4D4D4D)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate!);
                      setState(() {
                        startDate = formattedDate;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          startDate != '' ? startDate! : 'Start Date',
                          style: TextStyle(
                              color: const Color(0xFF4D4D4D),
                              fontFamily: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.bodySmall)
                                  .fontFamily),
                        ),
                        const Icon(Icons.calendar_month_outlined)
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 18.0),
                  height: 55,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF4D4D4D)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate!);
                      setState(() {
                        endDate = formattedDate;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          endDate != '' ? endDate! : 'End Date',
                          style: TextStyle(
                              color: const Color(0xFF4D4D4D),
                              fontFamily: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.bodySmall)
                                  .fontFamily),
                        ),
                        const Icon(Icons.calendar_month_outlined)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //Price
            Container(
              margin: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Price',
                  labelStyle: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodySmall)
                          .fontFamily),
                  border: InputBorder.none,
                ),
              ),
            ),
            //Address
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodySmall)
                          .fontFamily),
                  border: InputBorder.none,
                ),
              ),
            ),
            //City
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'City',
                  labelStyle: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodySmall)
                          .fontFamily),
                  border: InputBorder.none,
                ),
              ),
            ),
            //Contact Name
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Contact Name',
                  labelStyle: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodySmall)
                          .fontFamily),
                  border: InputBorder.none,
                ),
              ),
            ),
            //Contact Number
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Contact Number',
                  labelStyle: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodySmall)
                          .fontFamily),
                  border: InputBorder.none,
                ),
              ),
            ),
            // Event Description
            Container(
              height: 100,
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: 'Event Description',
                  labelStyle: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodySmall)
                          .fontFamily),
                  border: InputBorder.none,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFF1B2641),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  height: 50.0,
                  width: 170,
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 16, left: 10, right: 16, bottom: 16),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF833E),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  height: 50.0,
                  width: 170,
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
