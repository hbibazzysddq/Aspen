import 'package:flutter/material.dart';

class MenuAspen extends StatefulWidget {
  const MenuAspen({super.key});

  @override
  State<MenuAspen> createState() => _MenuAspenState();
}

class _MenuAspenState extends State<MenuAspen> {
  String? selectedMenu = 'Location'; // default value
  @override
  Widget build(BuildContext context) {
    final menus = ['Location', 'Hotels', 'Food', 'Adventure']; // List Menu
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: menus.map((menu) {
        final isSelected = selectedMenu == menu; // check if menu is selected
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedMenu = menu; // default value
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.blue.withOpacity(0.1) // selected color
                  : Colors.transparent, // change color when selected
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              menu, // display menu
              style: TextStyle(
                color: isSelected ? Colors.blue : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
