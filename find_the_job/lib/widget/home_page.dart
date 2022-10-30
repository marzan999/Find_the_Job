// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:find_the_job/widget/company_list.dart';
import 'package:find_the_job/widget/home_appbar.dart';
import 'package:find_the_job/widget/search_bar.dart';
import 'package:find_the_job/widget/tag_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
          ],
        ),
        Column(
          children: [
            HomeAppBar(),
            SearchBar(),
            TagList(),
            SizedBox(
              height: 30,
            ),
            CompanyList(),
          ],
        )
      ]),
    );
  }
}
