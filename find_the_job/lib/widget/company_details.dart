import 'package:find_the_job/model/company_info.dart';
import 'package:flutter/material.dart';

class CompanyDetails extends StatelessWidget {
  CompanyInfo company_info;
  CompanyDetails(this.company_info);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
    );
  }
}
