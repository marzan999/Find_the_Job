// ignore_for_file: prefer_const_constructors

import 'package:find_the_job/model/company_info.dart';
import 'package:find_the_job/widget/thankyou.dart';
import 'package:flutter/material.dart';

class CompanyDetails extends StatelessWidget {
  CompanyInfo companyInfo;
  CompanyDetails(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 5,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Image.asset(companyInfo.logoUrl),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey),
                          ),
                        ),
                        Text(
                          companyInfo.company,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.bookmark_outline_outlined),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        companyInfo.location,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Requirment',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 15,
                ),
                ...companyInfo.req
                    .map((e) => Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(15),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              Text(e)
                            ],
                          ),
                        ))
                    .toList(),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ThankYou()));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Apply Now',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
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
