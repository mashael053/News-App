
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFF3A44),
        shape: const CircleBorder(),
        onPressed: () {},
        child: Image.asset('assets/heartIcons.png'),
      ),
      body: Stack(
        children: [
          Opacity(
              opacity: 0.9,
              child: Image.asset(
                'assets/Rectangle60.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
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
                color: Colors.white,
                onPressed: () {},
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
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: "LONDON —",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'GentiumBookPlus',
                                  fontSize: 17,
                                  color: Color(0xff2E0505))),
                          TextSpan(
                              text:
                                  ' Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.',
                              style: TextStyle(
                                color: Color(0xff2E0505),
                                fontFamily: 'GentiumBookPlus',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              )),
                        ],
                      ),
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    const Text(
                        'Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later.',
                        style: TextStyle(
                          color: Color(0xff2E0505),
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        )),
                     SizedBox(
                      height: 15,
                    ),
                    const Text(
                        'Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.',
                        style: TextStyle(
                          color: Color(0xff2E0505),
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 0.563),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Sunday, 9 May 2021',
                      style: TextStyle(
                    fontWeight: FontWeight.w300,
                                      fontFamily: 'GentiumBookPlus',
                                  fontSize: 15,
                                  color: Color(0xff2E0505)),
                    ),
                  
                    Text(
                      'Crypto investors should be \nprepared to lose all their \nmoney, BOE governor says',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 14,
                          color: Color(0xff2E0505)),
                    ),
                  
                    Text(
                      'Published by Ryan Browne',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 14,
                          color: Color(0xff2E0505)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
