
import 'package:flutter/material.dart';
import 'package:last_app/data/models/get_news_models_.dart';
import 'package:last_app/screen1.dart';

class ScreenThree extends StatelessWidget  {
  Article? news;
  ScreenThree({super.key, this.news});

  @override
  Widget build(BuildContext context) {
    var _screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffFF3A44),
          shape: const CircleBorder(),
          onPressed: () {},
          child: Image.asset(
            'assets/NavBar/fav_icon.png',
            color: Colors.white,
            height: 25,
            width: 25,
          ),
        ),
        body: Stack(
          children: [
            Opacity(
                opacity: 0.9,
                child: Image.network(
                  "${news?.urlToImage}",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: 30,
              left: 20,
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(126, 158, 158, 158),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenOne()),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    const SizedBox(
                      height: 120,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: "${news?.content}",
                              style: TextStyle(
                                color: Color(0xff2E0505),
                                fontFamily: 'GentiumBookPlus',
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              )),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 0.563),
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '${news?.publishedAt}',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                          fontFamily: 'GentiumBookPlus',
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${news?.title}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontFamily: 'GentiumBookPlus',
                            fontSize: 15,
                            color: Color(0xff2E0505)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Published by ${news?.author}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontFamily: 'GentiumBookPlus',
                            fontSize: 12,
                            color: Color(0xff2E0505)),
                      )
                    ],
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
