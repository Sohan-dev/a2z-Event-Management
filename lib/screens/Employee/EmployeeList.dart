import 'dart:convert';

import 'package:a2z_event/models/employeeModel.dart';
import 'package:a2z_event/widget/EmployeeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/TextInput.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
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
      drawer: const Drawer(),
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
          Container(
            height: 45,
            width: double.infinity,
            // decoration: const BoxDecoration(color: Colors.blue),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Employee',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium)
                            .fontFamily),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Search Employee',
                        labelStyle: TextStyle(
                            color: const Color(0xFFB5B5B5),
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodySmall)
                                .fontFamily),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xFFBBBBBB), width: 5.0),
                        ),
                        suffixIcon: const Icon(
                          Icons.search_outlined,
                          color: Color(0xFFAFAFAF),
                        ),
                      ),
                    ),
                  ),
                ),
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
