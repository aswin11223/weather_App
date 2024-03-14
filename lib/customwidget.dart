import 'package:flutter/material.dart';

Widget customwidget(IconData icon, String temp, String location) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.orange,
        size: 70,
      ),
      Text(
        temp,
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
      ),
      Text(
        location,
        style: const TextStyle(fontSize: 18),
      ),
      SizedBox(
        height: 50,
      ),
     
    ],
  );
}
