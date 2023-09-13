// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:golden_house_flutter_malti_pages_task/second.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0092CA),
      appBar: AppBar(
        backgroundColor: Color(0xff0092CA),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            Positioned(
              top: 35,
              right: 25,
              child: Container(
                child: Text(
                  'اختيار الخدمة',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 72,
              bottom: 115,
              right: 10,
              left: 10,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 38),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          'مثال لخدمة',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '20 د.ع',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '30 دقيقة',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return SizedBox(
                    height: 14,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 12,
              right: 16,
              left: 16,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Second()),
                          );
                },
                child: Text(
                  'التالي',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 47),
                  backgroundColor: Color(0xff0092CA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
