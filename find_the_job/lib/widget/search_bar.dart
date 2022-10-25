// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
      margin: EdgeInsets.all(17),
      height: 310,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage('images/1.png'), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fast Search',
            style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 255, 219, 164),
                fontWeight: FontWeight.bold),
          ),
          Text(
            'You can search quickly for\nthe job you want',
            style: TextStyle(
                height: 1.5,
                fontSize: 25,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 255, 247, 177),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.search,
                    size: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Search',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
