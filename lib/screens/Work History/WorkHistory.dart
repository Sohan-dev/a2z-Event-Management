import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class WorkHistory extends StatefulWidget {
  const WorkHistory({super.key});

  @override
  State<WorkHistory> createState() => _WorkHistoryState();
}

class _WorkHistoryState extends State<WorkHistory> {
  String? startDate = '';
  String? endDate = '';
  int activeButton = 0;

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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Work History',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  label: const Text('Make Payment'),
                ),
              )
            ],
          ),
          //Date Picker
          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 10.0,
                  left: 16.0,
                ),
                height: 55,
                width: 150,
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
                width: 150,
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

          const SizedBox(
            height: 30,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total Amount',
                style: TextStyle(
                    fontSize: 20.0,
                    color: const Color(0xFF808080),
                    fontFamily: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
              Text(
                '₹ 50,500',
                style: TextStyle(
                    fontSize: 20.0,
                    color: const Color(0xFF17A2F2),
                    fontFamily: GoogleFonts.averiaLibre(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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

          Container(
            height: 50.0,
            width: 340,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFEFEFEF),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: SizedBox(
                    height: 43.0,
                    width: 165,
                    child: ElevatedButton(
                      onPressed: () {
                        activeButton = 0;
                        setState(() {
                          activeButton = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: activeButton == 0
                            ? Colors.white
                            : const Color(0xFFEFEFEF),
                      ),
                      child: Text(
                        'Work History',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: activeButton == 0
                                ? const Color(0xFF17A2F2)
                                : const Color(0xFF808080),
                            fontFamily: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayMedium)
                                .fontFamily),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 43.0,
                  width: 165,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        activeButton = 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: activeButton == 1
                          ? Colors.white
                          : const Color(0xFFEFEFEF),
                    ),
                    child: Text(
                      'Payment History',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: activeButton == 1
                              ? const Color(0xFF17A2F2)
                              : const Color(0xFF808080),
                          fontFamily: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyMedium)
                              .fontFamily),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
