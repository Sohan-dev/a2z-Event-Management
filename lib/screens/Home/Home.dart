import 'package:a2z_event/screens/Employee/EmployeeList.dart';
import 'package:a2z_event/screens/Home/Dashboard.dart';

import 'package:a2z_event/screens/Home/UpcomingEvents.dart';
import 'package:a2z_event/widget/MyDrawer.dart';
import 'package:flutter/material.dart';

import '../../Navigation/BottomNavigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int screenIndex = 0;

  final screens = [
    const Dashboard(),
    const EmployeeList(),
    const UpcomingEvent(),
  ];

  void updateId(int newId) {
    print('Home screen $newId');
    setState(() {
      screenIndex = newId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenIndex],
      drawer: const MyDrawer(),
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
      bottomNavigationBar: BottomNavigation(onIndexChanged: (int newId) {
        updateId(newId);
      }),
    );
  }
}
