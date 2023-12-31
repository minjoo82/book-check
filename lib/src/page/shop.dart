import 'package:bookscan_1/src/helper/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch = Uri(path: 'http://www.10x10.co.kr/shopping/category_prd.asp?itemid=5681476&disp=101102101102&pRtr=%EB%B3%84%EB%B3%84+%EC%9D%BC%EC%83%81+%EB%8B%A4%EC%9D%B4%EC%96%B4%EB%A6%AC&rc=rpos_1_1');

    return Scaffold(
      appBar: MainAppBar(),
      body: MaterialApp(
        home: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Scaffold(
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.3,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(Uri.parse('http://www.10x10.co.kr/shopping/category_prd.asp?itemid=5681476&disp=101102101102&pRtr=%EB%B3%84%EB%B3%84+%EC%9D%BC%EC%83%81+%EB%8B%A4%EC%9D%B4%EC%96%B4%EB%A6%AC&rc=rpos_1_1'));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item1.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("2024 별별일상 다이어리 (날짜형)",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(toLaunch);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item2.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("(2024 날짜형) 위클리 플래너",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(toLaunch);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item3.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("[Sanrio] 2024 산리오캐릭터즈 데스크 캘린더",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(toLaunch);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item4.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 4),
                          child: Text("2024 한정판 먼슬리매트 (날짜형) + 일정관리스티커",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(toLaunch);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item5.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("롱텀알람플래너 (체크리스트형 12개월 플래너)",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(toLaunch);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item6.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("[핑크풋] 꼬망가리개단어장",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(toLaunch);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item7.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("Plan B 스터디 플래너 ver.2",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(toLaunch);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/pointshop_image/item8.jpg'),
                              fit: BoxFit.fill),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Text("세계문학 북뱅크 독서통장",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}