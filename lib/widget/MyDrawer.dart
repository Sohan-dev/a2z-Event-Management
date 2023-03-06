import 'package:a2z_event/screens/Work%20Assigment/WorkAssignment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/Home/Home.dart';
import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final _imageURL =
        'https://avatars.githubusercontent.com/u/63089604?s=400&u=2045aedfba60ba723b1ff2034880a89ad0d7143c&v=4';
    return Drawer(
      child: Container(
        color: const Color(0xFF1B2641),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF141F38),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://googleflutter.com/sample_image.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Welcome,Shubhankar',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium)
                                  .fontFamily),
                        ),
                      ),
                      Text(
                        'olivia.beauty@gmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium)
                                .fontFamily),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Home
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.homeRoute);
              },
              splashColor: Colors.white,
              child: ListTile(
                leading: const Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            ),
            // My Profile
            GestureDetector(
              onTap: () {
                print('work assignment');
              },
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 45.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF757474A6),
                    ),
                  ),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Image(
                        image: AssetImage('assets/icons/profile.png'),
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34.0),
                      child: Text(
                        'My Profile',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium)
                                .fontFamily),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Work Assigment
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.workAssignment);
              },
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 52.0,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 0.5,
                      color: Color(0xFF757474A6),
                    ),
                    bottom: BorderSide(
                      color: Color(0xFF757474A6),
                    ),
                  ),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Image(
                        image: AssetImage('assets/icons/work_assignment.png'),
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34.0),
                      child: Text(
                        'Work Assignment',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium)
                                .fontFamily),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Work History
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.workHistory);
              },
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 52.0,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 0.5,
                      color: Color(0xFF757474A6),
                    ),
                    bottom: BorderSide(
                      color: Color(0xFF757474A6),
                    ),
                  ),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Image(
                        image: AssetImage('assets/icons/work_history.png'),
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34.0),
                      child: Text(
                        'Work History',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium)
                                .fontFamily),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Add employee
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.addEmployee);
              },
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 52.0,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 0.5,
                      color: Color(0xFF757474A6),
                    ),
                    bottom: BorderSide(
                      color: Color(0xFF757474A6),
                    ),
                  ),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Image(
                        image: AssetImage('assets/icons/settings.png'),
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34.0),
                      child: Text(
                        'Add Employee',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium)
                                .fontFamily),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // User Settings
            GestureDetector(
              onTap: () {
                print('work assignment');
              },
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 52.0,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 0.5,
                      color: Color(0xFF757474A6),
                    ),
                    bottom: BorderSide(
                      color: Color(0xFF757474A6),
                    ),
                  ),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Image(
                        image: AssetImage('assets/icons/user_settings.png'),
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34.0),
                      child: Text(
                        'User Settings',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium)
                                .fontFamily),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ListTile(
            //   leading: Container(
            //     width: 22,
            //     height: 22,
            //     decoration: const BoxDecoration(
            //       shape: BoxShape.circle,
            //       image: DecorationImage(
            //           image: AssetImage('assets/icons/profile.png'),
            //           fit: BoxFit.contain),
            //     ),
            //   ),
            //   title: Text(
            //     'My Profile',
            //     textScaleFactor: 1.2,
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: GoogleFonts.poppins(
            //                 textStyle: Theme.of(context).textTheme.bodyMedium)
            //             .fontFamily),
            //   ),
            // ),

            // ListTile(
            //   leading: Container(
            //     width: 24,
            //     height: 24,
            //     decoration: const BoxDecoration(
            //       shape: BoxShape.circle,
            //       image: DecorationImage(
            //           image: AssetImage('assets/icons/work_assignment.png'),
            //           fit: BoxFit.contain),
            //     ),
            //   ),
            //   title: Text(
            //     'Work Assignment',
            //     textScaleFactor: 1.2,
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: GoogleFonts.poppins(
            //                 textStyle: Theme.of(context).textTheme.bodyMedium)
            //             .fontFamily),
            //   ),
            // ),

            // ListTile(
            //   leading: Container(
            //     width: 24,
            //     height: 24,
            //     decoration: const BoxDecoration(
            //       shape: BoxShape.circle,
            //       image: DecorationImage(
            //           image: AssetImage('assets/icons/work_history.png'),
            //           fit: BoxFit.contain),
            //     ),
            //   ),
            //   title: Text(
            //     'Work History',
            //     textScaleFactor: 1.2,
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: GoogleFonts.poppins(
            //                 textStyle: Theme.of(context).textTheme.bodyMedium)
            //             .fontFamily),
            //   ),
            // ),
            // ListTile(
            //   leading: Container(
            //     width: 22,
            //     height: 22,
            //     decoration: const BoxDecoration(
            //       shape: BoxShape.circle,
            //       image: DecorationImage(
            //           image: AssetImage('assets/icons/settings.png'),
            //           fit: BoxFit.contain),
            //     ),
            //   ),
            //   title: Text(
            //     'Add Employee',
            //     textScaleFactor: 1.2,
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: GoogleFonts.poppins(
            //                 textStyle: Theme.of(context).textTheme.bodyMedium)
            //             .fontFamily),
            //   ),
            // ),
            // ListTile(
            //   leading: Container(
            //     width: 22,
            //     height: 22,
            //     decoration: const BoxDecoration(
            //       shape: BoxShape.circle,
            //       image: DecorationImage(
            //           image: AssetImage('assets/icons/user_settings.png'),
            //           fit: BoxFit.contain),
            //     ),
            //   ),
            //   title: Text(
            //     'User Settings',
            //     textScaleFactor: 1.2,
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: GoogleFonts.poppins(
            //                 textStyle: Theme.of(context).textTheme.bodyMedium)
            //             .fontFamily),
            //   ),
            // ),

            InkWell(
              splashColor: Colors.white,
              child: ListTile(
                leading: const Icon(
                  CupertinoIcons.power,
                  color: Colors.white,
                ),
                title: Text(
                  'Sign out',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium)
                          .fontFamily),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
