import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../category/air_.dart';
import '../category/boot.dart';
import '../category/reebok.dart';
import 'home.dart';

class Banner_ extends StatefulWidget {
  const Banner_({Key? key}) : super(key: key);

  @override
  State<Banner_> createState() => _Banner_State();
}

class _Banner_State extends State<Banner_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          child: ListView(children: [
            Column(children: [
              CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/ban1.png'))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/ban2.png'))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/ban1.png'))),
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  viewportFraction: 0.8,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Column(children: [
                      InkWell(
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/ex5.2.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                        },
                      ),
                      Text("All", style: TextStyle(color: Colors.black))
                    ]),
                    //       Text(('Sneakers'),style:TextStyle(backgroundColor: Colors.white), ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(children: [
                      InkWell(
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/boot_1_org.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Boot1()));
                        },
                      ),
                      Text("BOOT", style: TextStyle(color: Colors.black))
                    ])
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Column(children: [
                      InkWell(
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/reebok_1_org.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Reebok_cat()));
                        },
                      ),
                      Text("REEBOX", style: TextStyle(color: Colors.black))
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Column(children: [
                      InkWell(
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/air1_org.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Air_cat()));
                        },
                      ),
                      Text("AIR JORDEN", style: TextStyle(color: Colors.black))
                    ])
                  ],
                ),
              ),
            ]),
          ]),
        ));
  }
}
