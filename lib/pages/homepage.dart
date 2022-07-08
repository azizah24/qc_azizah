import 'package:flutter/material.dart';
import 'package:qc_azizah/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background1,
        elevation: 0,
        title: Text(
          'Quality Control',
          style: medStyle.copyWith(fontSize: 20),
        ),
        leading: Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.only(
            left: 24,
          ),
          decoration: BoxDecoration(
              color: button,
              shape: BoxShape.circle,
              border: Border.all(color: white.withOpacity(0.1))),
          child: Icon(
            Icons.arrow_back,
            size: 20,
          ),
        ),
      ),
      backgroundColor: background1,
      body: Stack(children: [
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Quality Control IN',
                      style:
                          boldStyle.copyWith(color: label_black, fontSize: 24),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Klik Kotak untuk merubah Kondisi QC',
                      style: medStyle.copyWith(color: label_grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 24, right: 24),
                        padding: EdgeInsets.only(
                            left: 26, right: 26, top: 16, bottom: 16),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(24)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: red200),
                                  child: Icon(
                                    Icons.clear,
                                    color: white,
                                    size: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Bad All',
                                  style: medStyle.copyWith(
                                      color: red200, fontSize: 12),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: Icon(
                                    Icons.remove,
                                    color: white,
                                    size: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Skip All',
                                  style: medStyle.copyWith(
                                      color: Colors.black, fontSize: 12),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: green),
                                  child: Icon(
                                    Icons.check,
                                    color: white,
                                    size: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Good All',
                                  style: medStyle.copyWith(
                                      color: green, fontSize: 12),
                                )
                              ],
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        //shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, snap) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                left: 24, right: 24, bottom: 16),
                            padding: EdgeInsets.only(
                                left: 12, right: 12, top: 16.5, bottom: 16.5),
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'System iOS',
                                    style:
                                        boldStyle.copyWith(color: label_black),
                                  ),
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        color: secondary,
                                        shape: BoxShape.circle),
                                    padding: EdgeInsets.all(7),
                                    child: Image.asset(
                                      'assets/images/edit.png',
                                      width: 10,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.5,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(
                                      left: 26, right: 26, top: 10, bottom: 16),
                                  decoration: BoxDecoration(
                                      color: secondary,
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 14,
                                            height: 14,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: red200),
                                            child: Icon(
                                              Icons.clear,
                                              color: white,
                                              size: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Bad',
                                            style: medStyle.copyWith(
                                                color: red200, fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 14,
                                            height: 14,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black),
                                            child: Icon(
                                              Icons.remove,
                                              color: white,
                                              size: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Skip',
                                            style: medStyle.copyWith(
                                                color: Colors.black,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 14,
                                            height: 14,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: green),
                                            child: Icon(
                                              Icons.check,
                                              color: white,
                                              size: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Good',
                                            style: medStyle.copyWith(
                                                color: green, fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ]),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 112,
            padding: EdgeInsets.only(left: 24, right: 24, top: 16),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: background1,
                      borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.only(top: 17, bottom: 17),
                  child: Center(
                    child: Text(
                      'Lanjut',
                      style: boldStyle.copyWith(color: white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
