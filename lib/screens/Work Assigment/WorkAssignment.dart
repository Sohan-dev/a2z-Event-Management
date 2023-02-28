import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class WorkAssignment extends StatefulWidget {
  const WorkAssignment({super.key});

  @override
  State<WorkAssignment> createState() => _WorkAssignmentState();
}

class _WorkAssignmentState extends State<WorkAssignment> {
  String? _workType;
  String? _assignType;
  String? _event;
  String? _status;

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  var item2 = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 25.0),
              child: Text(
                'Work Assignment',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
            ),
            // Work Type dropdown
            Container(
              margin: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 10.0,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: _workType,
                  hint: const Text(
                    'Work Type',
                    style: TextStyle(color: const Color(0xFF4D4D4D)),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  style: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _workType = newValue ?? "";
                    });
                  },
                ),
              ),
            ),
            // Assign To dropdown
            Container(
              margin: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 10.0,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: _assignType,
                  hint: const Text(
                    'Assign To',
                    style: TextStyle(color: const Color(0xFF4D4D4D)),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  style: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                  items: item2.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _assignType = newValue ?? "";
                    });
                  },
                ),
              ),
            ),
            // Event dropdown
            Container(
              margin: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 10.0,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: _event,
                  hint: const Text(
                    'Event',
                    style: TextStyle(color: const Color(0xFF4D4D4D)),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  style: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                  items: item2.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _event = newValue ?? "";
                    });
                  },
                ),
              ),
            ),
            // Price text field
            Container(
              margin: const EdgeInsets.all(16),
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
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(12),
                  //   borderSide:
                  //       const BorderSide(color: Color(0xFF4D4D4D), width: 0.0),
                  // ),
                ),
              ),
            ),
            //Status Drop down
            Container(
              margin: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 10.0,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4D4D4D), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: _status,
                  hint: const Text(
                    'Status',
                    style: TextStyle(color: const Color(0xFF4D4D4D)),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  style: TextStyle(
                      color: const Color(0xFF4D4D4D),
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                  items: item2.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _status = newValue ?? "";
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
