import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({super.key});

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  File? _image;
  String? _workType;

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image == null) return;
    final imageTemp = File(image.path);
    setState(() {
      _image = imageTemp;
    });
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
                'Add Employee',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium)
                        .fontFamily),
              ),
            ),
            Row(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        getImage();
                      },
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color(0xFFD8D7D7), width: 5),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://googleflutter.com/sample_image.jpg'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20, //give the values according to your requirement
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: const Icon(Icons.camera_enhance_rounded),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Priya Dasmahapatra',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                )
              ],
            ),
            // Email
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
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Email Address',
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
            // Job Type
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
                  hint: Text(
                    'Job Type',
                    style: TextStyle(
                        color: const Color(0xFF4D4D4D),
                        fontFamily: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall)
                            .fontFamily),
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
            // Address
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
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1EFEF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/icons/add.png',
                      fit: BoxFit.contain,
                      height: 30,
                      width: 30,
                    ),
                    onPressed: () {
                      getImage();
                    },
                  ),
                ),
                _image != null
                    ? Image.file(_image!,
                        width: 100, height: 100, fit: BoxFit.contain)
                    : Container(
                        margin: const EdgeInsets.all(16),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1EFEF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.image),
                      ),
              ],
            ),
            Row(
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
                  width: 150,
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
                  width: 150,
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
            )
          ],
        ),
      ),
    );
  }
}
