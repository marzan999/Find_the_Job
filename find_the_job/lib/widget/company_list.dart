// ignore_for_file: prefer_const_constructors

import 'package:find_the_job/model/company_info.dart';
import 'package:find_the_job/widget/company_details.dart';
import 'package:find_the_job/widget/company_item.dart';
import 'package:flutter/material.dart';

class CompanyList extends StatelessWidget {
  final cInfo = CompanyInfo.generatedCompanyList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => CompanyDetails(cInfo[index]));
                },
                child: CompanyItem(cInfo[index]));
          },
          separatorBuilder: (_, index) => SizedBox(
                width: 0,
              ),
          itemCount: cInfo.length),
    );
  }
}
