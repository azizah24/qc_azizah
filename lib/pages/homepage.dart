import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:qc_azizah/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List dataQc = [];
  ScrollController scrollController = ScrollController();
  int maxIndex = 10;
  bool badClick = false, skipClick = false, goodClick = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataQc = List.generate(10, (i) => "System iOS ${i + 1}");
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        getMoreData();
      }
    });
  }

  getMoreData() {
    for (int i = maxIndex; i < maxIndex + 10; i++) {
      dataQc.add("System iOS ${i + 1}");
    }

    maxIndex = maxIndex + 10;

    setState(() {});
  }

  void currentWorkspace() {
    final node = FocusScope.of(context);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      )),
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.35,
        maxChildSize: 0.35,
        minChildSize: 0.35,
        builder: (context, scrollController) => StatefulBuilder(
            builder: (BuildContext context, StateSetter stateSetter) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              color: secondary,
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: 64,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: Color(0xffe0e0e0)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Keterangan IN',
                          style: boldStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xfff2f2f2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.all(17),
                          child: Text(
                            'Tambahkan Keterangan QC',
                            style: medStyle.copyWith(
                                color: label_grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: background1,
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.only(top: 17, bottom: 17),
                          child: Center(
                            child: Text(
                              'Lanjut',
                              style: boldStyle.copyWith(
                                  color: white, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

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
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (badClick == false) {
                                    badClick = true;
                                  } else {
                                    badClick = false;
                                  }
                                  skipClick = false;
                                  goodClick = false;
                                });
                              },
                              child: Row(
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
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (skipClick == false) {
                                    skipClick = true;
                                  } else {
                                    skipClick = false;
                                  }
                                  badClick = false;
                                  goodClick = false;
                                });
                              },
                              child: Row(
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
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (goodClick == false) {
                                    goodClick = true;
                                  } else {
                                    goodClick = false;
                                  }
                                  badClick = false;
                                  skipClick = false;
                                });
                              },
                              child: Row(
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
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: dataQc.length + 1,
                        controller: scrollController,
                        //shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, snap) {
                          if (snap == dataQc.length) {
                            return JumpingDots(
                              color: background1,
                              radius: 10,
                              numberOfDots: 3,
                              animationDuration: Duration(milliseconds: 200),
                            );
                          }
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
                                    '${dataQc[snap]}',
                                    style:
                                        boldStyle.copyWith(color: label_black),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        currentWorkspace();
                                      });
                                    },
                                    child: Container(
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
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.5,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: secondary,
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color:
                                                badClick ? red200 : secondary,
                                            borderRadius:
                                                BorderRadius.circular(1000)),
                                        margin: EdgeInsets.only(
                                            left: 4, top: 4, bottom: 4),
                                        padding: EdgeInsets.only(
                                            left: 26,
                                            right: 26,
                                            top: 6,
                                            bottom: 6),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 14,
                                              height: 14,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: badClick
                                                      ? white
                                                      : red200),
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    badClick ? red200 : white,
                                                size: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Bad',
                                              style: medStyle.copyWith(
                                                  color:
                                                      badClick ? white : red200,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: skipClick
                                                ? Colors.black
                                                : secondary,
                                            borderRadius:
                                                BorderRadius.circular(1000)),
                                        margin: EdgeInsets.only(
                                            left: 4, top: 4, bottom: 4),
                                        padding: EdgeInsets.only(
                                            left: 26,
                                            right: 26,
                                            top: 6,
                                            bottom: 6),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 14,
                                              height: 14,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: skipClick
                                                      ? white
                                                      : Colors.black),
                                              child: Icon(
                                                Icons.remove,
                                                color: skipClick
                                                    ? Colors.black
                                                    : white,
                                                size: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Skip',
                                              style: medStyle.copyWith(
                                                  color: skipClick
                                                      ? white
                                                      : Colors.black,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color:
                                                goodClick ? green : secondary,
                                            borderRadius:
                                                BorderRadius.circular(1000)),
                                        margin: EdgeInsets.only(
                                            left: 4, top: 4, bottom: 4),
                                        padding: EdgeInsets.only(
                                            left: 26,
                                            right: 26,
                                            top: 6,
                                            bottom: 6),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 14,
                                              height: 14,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: goodClick
                                                      ? white
                                                      : green),
                                              child: Icon(
                                                Icons.check,
                                                color:
                                                    goodClick ? green : white,
                                                size: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Good',
                                              style: medStyle.copyWith(
                                                  color:
                                                      goodClick ? white : green,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
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
