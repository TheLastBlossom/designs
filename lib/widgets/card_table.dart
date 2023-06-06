import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              icon: Icons.ac_unit_rounded, color: Colors.black, text: 'Lorem'),
          _SingleCard(
              icon: Icons.access_alarm_sharp,
              color: Colors.blueAccent,
              text: 'Lorem'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.car_crash_outlined,
              color: Colors.black,
              text: 'Lorem'),
          _SingleCard(
              icon: Icons.access_alarm_sharp, color: Colors.pink, text: 'Lorem')
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.shop_2_outlined, color: Colors.black, text: 'Lorem'),
          _SingleCard(
              icon: Icons.sensor_door_outlined,
              color: Colors.blueAccent,
              text: 'Lorem'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.shop_2_outlined, color: Colors.black, text: 'Lorem'),
          _SingleCard(
              icon: Icons.sensor_door_outlined,
              color: Colors.blueAccent,
              text: 'Lorem'),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {    
    return _CardBackground(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 30,
        child: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(color: color, fontSize: 18),
      )
    ]));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
