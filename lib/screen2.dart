import 'package:flutter/material.dart';
import 'package:last_app/screen4.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        labelText: 'COVID',
                        hintText: 'COVID New Variant',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      WidgetRowList(
                        text: 'Filtter',
                        width: 90,
                        height: 40,
                        color: Color(0xffFF3A44),
                        textColor: Colors.white,
                      ),
                      WidgetRowList(
                        text: 'Healthy',
                        color: Colors.white12,
                        width: 80,
                        height: 40,
                        textColor: Color(0xff2E0505),
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
                        color: Colors.white12,
                        width: 80,
                        height: 40,
                        textColor: Color(0xff2E0505),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "About 11.130.000 results for",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'COVID New Variant',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ColumnList(
                image: 'assets/image3screenone.png',
                text1: '5 things to know about the conundrum of lupus',
                text2: 'Matt Villano',
                text3: 'Sunday, 9 May 2021',
                height: 40,
                width: 139,
              ),
              SizedBox(height: 10),
              ColumnList(
                image: 'assets/image1screenone.jpeg',
                  text1: '4 ways families can ease anxiety together',
                  text2: 'Zain Korsgaard',
                  text3: 'Sunday, 9 May 2021',
                height: 40,
                width: 139,
              ),
                SizedBox(height: 10),
              ColumnList(
                image: 'assets/image2screenone.jpeg',
                  text1:'What to do if you\'re planning or attending a \nwedding during the pandemic',
                  text2: 'Matt Villano',
                  text3: 'Sunday, 9 May 2021',
                height: 40,
                width: 139,
              ),
              Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Filter",
        style: TextStyle(
          fontFamily: 'GentiumBookPlus',
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    IconButton(
      icon: Icon(Icons.delete),
      color: Colors.black,
      onPressed: () {
            },
    ),
  ],
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Sort By",
        style: TextStyle(
          fontFamily: 'GentiumBookPlus',
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
  
    ],
  ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Recommended",
        style: TextStyle(
          fontFamily: 'GentiumBookPlus',
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(width: 10),
      Text(
        "Latest",
        style: TextStyle(
          fontFamily: 'GentiumBookPlus',
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(width: 10),
      Text(
        "Most Viewed",
        style: TextStyle(
          fontFamily: 'GentiumBookPlus',
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Channel",
        style: TextStyle(
          fontFamily: 'GentiumBookPlus',
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(width: 10),
      Text(
        "Following",
        style: TextStyle(
          fontFamily: 'GentiumBookPlus',
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width ,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                        Radius.circular(30),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFF3A44)),
                    ),
                    child: const Text(
                      'SAVE',
                      
                      style: TextStyle(color: Colors.white ,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GentiumBookPlus',
                       fontSize: 24,),
                    ),
                    onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const ScreenFour(),
                        ));
                      
                    } ,
                  ),
                ),
              ),           ],

            
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

class ColumnList extends StatelessWidget {
  const ColumnList({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.height,
    required this.width,
  }) : super(key: key);

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
      child: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              image,
              width: 360,
              height: 120,
              fit: BoxFit.cover            ),
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
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 254, 254),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GentiumBookPlus',
                      ),
                    ),
                    SizedBox(
                      width: width,
                    ),
                    Text(
                      text3,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 254, 254),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GentiumBookPlus',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}