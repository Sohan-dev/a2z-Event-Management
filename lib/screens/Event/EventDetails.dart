import 'dart:convert';

import 'package:a2z_event/widget/EmployeeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/employeeModel.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final eventJson = await rootBundle.loadString('assets/files/employee.json');
    final decodeJson = jsonDecode(eventJson);

    var productsData = decodeJson['employee'];

    EmployeeModel.item = List.from(productsData)
        .map<EmployeeItem>((e) => EmployeeItem.fromMap(e))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              backgroundColor: Color(0xFFEFFBF8),
              backgroundImage: NetworkImage(
                  'https://rukminim1.flixcart.com/image/612/612/kqy3rm80/vehicle-lubricant/f/q/k/1-7100-4t-10w50-motul-original-imag4u8vn4xtxexf.jpeg?q=70'),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0),
            child: Text(
              'Event Details',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium)
                      .fontFamily),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: SizedBox(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/icons/heart.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nabin weds Priya',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://googleflutter.com/sample_image.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Text(
                          'Ashit Ghosh',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: const Color(0xFFA6A6A6),
                              fontFamily: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium)
                                  .fontFamily),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/icons/phone.png'),
                        height: 20,
                        width: 20,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Text(
                          '123-456-7890',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: const Color(0xFFA6A6A6),
                              fontFamily: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium)
                                  .fontFamily),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 18.0),
            child: Row(
              children: [
                Text(
                  'Address:',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF808080),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    '5 East Purbanchal, Kolkata 700094',
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text(
                  'Date:',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF808080),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    '24th April 10:00am - 25th April 11:00pm',
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text(
                  'Total Amount:',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF808080),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    '₹50,500',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF17A2F2),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text(
                  'Paid:',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF808080),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    '₹30,000',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF029723),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Due:',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF808080),
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
                  child: Text(
                    '₹20,500',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFFCC1E1E),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Teams',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF17A2F2),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      const Icon(Icons.add),
                      Text(
                        'Add Team',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: const Color(0xFF17A2F2),
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium)
                                .fontFamily),
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: (EmployeeModel.item != null && EmployeeModel.item.isNotEmpty)
                ? ListView.builder(
                    itemCount: EmployeeModel.item.length,
                    itemBuilder: (context, index) =>
                        EmployeeWidget(item: EmployeeModel.item[index]),
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
