// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 173, 142),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Thank you for applying.👍👍',
                style: TextStyle(
                    fontSize: 55, color: Color.fromARGB(255, 100, 61, 3)),
              ),
            ),
          ),
        ));
  }
}
