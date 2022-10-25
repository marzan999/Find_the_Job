// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = <String>['All', '⚡  Popular', '⭐  Featured'];

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Container(
        height: 40,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: selected == index
                            ? Color.fromARGB(255, 111, 196, 187)
                            : Colors.white,
                        border: Border.all(
                            color: selected == index
                                ? Colors.white.withOpacity(0.3)
                                : Colors.red)),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    child: Text(
                      _tagList[index],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            separatorBuilder: (_, inded) => SizedBox(
                  width: 10,
                ),
            itemCount: _tagList.length),
      ),
    );
  }
}
