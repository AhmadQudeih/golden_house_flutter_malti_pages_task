// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0092CA),
      appBar: AppBar(
        backgroundColor: Color(0xff0092CA),
        elevation: 0,
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
              top: 32,
              right: 34,
              child: Container(
                child: Text(
                  'تفاصيل الحجز',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 86,
              bottom: 115,
              right: 18,
              left: 18,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                itemCount: 2,
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
                          'المتجر',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'اسم المتجر',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
              ),
            ),
            Positioned(
                top: 250,
                right: 10,
                left: 10,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Positioned(
                      right: 18,
                      child: Text(
                        'الخدمة',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: 18,
                      left: 18,
                      child: Container(
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
                              'المتجر',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'اسم المتجر',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 360,
                right: 10,
                left: 10,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Positioned(
                      right: 18,
                      child: Text(
                        'الزمن',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 40,
                        right: 18,
                        left: 18,
                        child: ListView.separated(
                            shrinkWrap: true,
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
                                      'التاريخ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '12 November',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (BuildContext context, index) {
                              return SizedBox(height: 20);
                            },
                            itemCount: 2)),
                  ],
                )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Stack(
                children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      color: Color(0xff0092CA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 40,
                    left: 40,
                    child: Row(
                      children: [
                        Text(
                          'المبلغ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '120 د.ع',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Stack(
                      children: [
                        Container(
                          height: 115,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 24,
                          bottom: 37,
                          right: 16,
                          left: 16,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'تأكيد الحجز',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0092CA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
