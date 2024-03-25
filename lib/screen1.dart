import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search',
                          hintText: 'Dogecoin to the Moon...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF3A44),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest News',
                      style: TextStyle(
                        fontFamily: 'GentiumBookPlus',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'GentiumBookPlus',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardThree(
                        image: 'assets/Rectangle60.png',
                        text1:
                            'Crypto investors should be prepared to lose all their money, BOE governor says',
                        text2:
                            '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                        opacity: 0.9,
                        fun: () {},
                      ),
                      SizedBox(width: 10),
                      CardThree(
                        image: 'assets/Rectangle60.png',
                        text1: 'Another news headline',
                        text2: 'Description of the news article',
                        opacity: 0.8,
                        fun: () {},
                      ),
                      SizedBox(width: 10),
                      CardThree(
                        image: 'assets/Rectangle60.png',
                        text1: 'Yet another news headline',
                        text2: 'Description of the news article',
                        opacity: 0.7,
                        fun: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      WidgetRowList(
                        text: 'Healthy',
                        width: 90,
                        height: 40,
                        color: Color(0xffFF3A44),
                        textColor: Color(0xffFFFFFF),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      WidgetRowList(
                        text: 'Technology',
                        color: Colors.white12,
                        width: 80,
                        height: 40,
                        textColor: Color(0xff2E0505),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      WidgetRowList(
                        text: 'Finance',
                        width: 80,
                        height: 40,
                        textColor: Color(0xff2E0505),
                        color: Colors.white12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      WidgetRowList(
                        text: 'Arts',
                        width: 80,
                        height: 40,
                        textColor: Color(0xff2E0505),
                        color: Colors.white12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      WidgetRowList(
                        text: 'Sports',
                        width: 80,
                        height: 40,
                        color: Colors.white12,
                        textColor: Color(0xff2E0505),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CulomnList(
                  image: 'assets/image1screenone.jpeg',
                  text1: '5 things to know about the conundrum of lupus',
                  text2: 'Matt Villano',
                  text3: 'Sunday, 9 May 2021',
                  height: 40,
                  width: 139,
                ),
                SizedBox(height: 10),
                CulomnList(
                  image: 'assets/image2screenone.jpeg',
                  text1: '4 ways families can ease anxiety together',
                  text2: 'Zain Korsgaard',
                  text3: 'Sunday, 9 May 2021',
                  height: 40,
                  width: 139,
                ),
                SizedBox(height: 10),
                CulomnList(
                  image: 'assets/image3screenone.png',
                  text1:
                      'What to do if you\'re planning or attending a \nwedding during the pandemic',
                  text2: 'Matt Villano',
                  text3: 'Sunday, 9 May 2021',
                  height: 40,
                  width: 139,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardThree extends StatelessWidget {
  const CardThree({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.opacity,
    required this.fun,
  }) : super(key: key);

  final String image;
  final String text1;
  final String text2;
  final double opacity;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(15),
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        text1,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Text(
                        text2,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetRowList extends StatelessWidget {
  const WidgetRowList({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String text;
  final Color color;
  final Color textColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CulomnList extends StatelessWidget {
  const CulomnList(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.height,
      required this.width});
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            image,
            width: 360,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          left: 13,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 255, 254, 254),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              SizedBox(
                height: height,
              ),
              Row(
                children: [
                  Text(text2,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 254, 254),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GentiumBookPlus',
                      )),
                  SizedBox(
                    width: width,
                  ),
                  Text(text3,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 254, 254),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GentiumBookPlus',
                      ))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
