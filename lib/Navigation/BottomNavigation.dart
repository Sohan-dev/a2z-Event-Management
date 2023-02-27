// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

typedef IntCallback = void Function(int id);

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    Key? key,
    required this.onIndexChanged,
  }) : super(key: key);

  final IntCallback onIndexChanged;
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFCFCFC),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          width: double.infinity,
          height: 80.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              // ignore: sort_child_properties_last
              children: [
                IconButtons(
                    text: 'Home',
                    icon: Icons.home,
                    selected: selectedIndex == 0 ? true : false,
                    onPressed: () {
                      selectedIndex = 0;
                      onIndexChanged(selectedIndex);
                      print('in bottom nav $selectedIndex');
                    }),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF833E),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButtons(
                      text: 'Add Event',
                      icon: Icons.add,
                      selected: selectedIndex == 1 ? true : false,
                      onPressed: () {
                        print('in bottom nav $selectedIndex');
                        selectedIndex = 1;
                        onIndexChanged(selectedIndex);
                      }),
                ),
                IconButtons(
                    text: 'Event',
                    icon: Icons.calendar_month_outlined,
                    selected: selectedIndex == 2 ? true : false,
                    onPressed: () {
                      print('in bottom nav $selectedIndex');
                      selectedIndex = 2;
                      onIndexChanged(selectedIndex);
                    }),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
        ),
      ),
    );
  }
}

class IconButtons extends StatelessWidget {
  const IconButtons({
    Key? key,
    required this.text,
    required this.icon,
    this.selected = true,
    required this.onPressed,
  }) : super(key: key);

  final dynamic text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            icon,
            size: 25,
            color: selected ? Colors.blue : Colors.grey,
          ),
          // focusColor: Color.fromARGB(255, 9, 7, 0),
          onPressed: onPressed,
        ),
        // Text(
        //   text,
        //   style: TextStyle(
        //       fontSize: 14,
        //       height: .1,
        //       color: selected ? const Color(0xFF1B2641) : Colors.grey),
        // ),
      ],
    );
  }
}
