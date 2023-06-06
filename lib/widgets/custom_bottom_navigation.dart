import 'package:flutter/material.dart';

class CustomBottonNavigationBar extends StatelessWidget {
  const CustomBottonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(selectedItemColor: Colors.pink, backgroundColor: const Color.fromRGBO(55, 57, 86, 1), unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1), showSelectedLabels: false, showUnselectedLabels: false, items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
      BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline), label: 'Gráfica'),
      BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined), label: 'Usuario'),
    ]);
  }
}
