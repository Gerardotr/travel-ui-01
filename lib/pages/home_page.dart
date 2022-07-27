import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_ui_1/pages/details_trip_page.dart';

import '../data/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map((e) => Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: e.id == 1 ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.withOpacity(0.2)),
                        padding: EdgeInsets.all(5),
                        child: Image.asset(e.image)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    e.title,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/images/cara-feliz.png'),
            ),
            const SizedBox(
              width: 20,
            ),
            RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    text: "Hi, Gerardo!",
                    style: TextStyle(fontSize: 14, color: Colors.black87)))
          ],
        ),
        actions: [
          Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
              child: Icon(
                Icons.notifications_active,
                color: Colors.amber,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width * 0.85,
              padding: EdgeInsets.only(top: 50, left: 20, bottom: 20),
              child: RichText(
                text: TextSpan(
                    text: 'Where do \nyou want to go ?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 32)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 65,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 16),
                              text: "Search for places...")),
                    ),
                    Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.amber,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        text: "Categories",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: buildCategories(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50, top: 40, left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          text: "Top Trips",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                  RichText(
                      text: TextSpan(
                          text: "Explore",
                          style: TextStyle(color: Colors.grey, fontSize: 16)))
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      10,
                      (index) => Container(
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: DetailsTripPage(),
                                          type:
                                              PageTransitionType.bottomToTop));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  width: 165,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'assets/images/trip.jpg',
                                            fit: BoxFit.cover,
                                            height: 145,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                              text: TextSpan(
                                                  text: 'Banrir Kanal',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w800))),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          RichText(
                                              text: TextSpan(
                                                  text: 'Camp',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w400)))
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          ))),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          margin: EdgeInsets.only( left: 30, right: 30),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home, color: Colors.white,)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite,color: Colors.white,)),
              IconButton(onPressed: () {}, icon: Icon(Icons.people, color: Colors.white,)),
            ],
          ),
        ),
      ),
    );
  }
}
