import 'package:flutter/material.dart';
import 'package:last_app/data/models/get_news_models_.dart';
import 'package:last_app/data/reposirory/get_news_repository.dart';
import 'package:last_app/home_screen_cubit.dart';
import 'package:last_app/screen2.dart';
import 'package:last_app/screen3.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  GetNewsModels? myNews;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeScreenCubit>().getUpdates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (ctx, state) {
          print(state);
          if (state is HomeScreenLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeScreenError) {
            return Center(
              child: Text("Error"),
            );
          } else if (state is HomeScreenSuccess) {
            return SafeArea(
              child: Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                              InkWell(
                                onTap: () async {
                                  myNews = await GetNewsRepository().getNews();
                                  setState(() {
                                    myNews = myNews;
                                  });
                                },
                                child: Text(
                                  'See all',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'GentiumBookPlus',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                      if (myNews ==
                          null) // Add condition to show CircularProgressIndicator
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      if (myNews != null &&
                          myNews?.articles !=
                              null) // Render news only if myNews is not null
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < myNews!.articles!.length; i++)
                                CardThree(
                                  image: myNews!.articles![i].urlToImage ?? "",
                                  text1: myNews!.articles![i].title ?? "",
                                  text2: myNews!.articles![i].description ?? "",
                                  opacity: 0.9,
                                  fun: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ScreenThree(
                                                news: myNews!.articles![i]))
                                        // MaterialPageRoute(builder: (context) => ScreenThree(myNews!.articles![i]))
                                        );
                                  },
                                ),
                              // SizedBox(height: 10),
                            ],
                          ),
                        ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                      ),
                      SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const ScreenTwo(),
                              ));
                        },
                        child: CulomnList(
                          image: 'assets/image1screenone.jpeg',
                          text1:
                              '5 things to know about the conundrum of lupus',
                          text2: 'Matt Villano',
                          text3: 'Sunday, 9 May 2021',
                          height: 40,
                          width: 139,
                        ),
                      ),
                      SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const ScreenTwo(),
                              ));
                        },
                        child: CulomnList(
                          image: 'assets/image2screenone.jpeg',
                          text1: '4 ways families can ease anxiety together',
                          text2: 'Zain Korsgaard',
                          text3: 'Sunday, 9 May 2021',
                          height: 40,
                          width: 139,
                        ),
                      ),
                      SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => ScreenTwo(),
                              ));
                        },
                        child: CulomnList(
                          image: 'assets/image3screenone.png',
                          text1:
                              'What to do if you\'re planning or attending a \nwedding during the pandemic',
                          text2: 'Matt Villano',
                          text3: 'Sunday, 9 May 2021',
                          height: 40,
                          width: 139,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } // End The Bloc //
          else {
            return Center(
              child: Text("Initial this app state"),
            );
          }
        },
      ),
    ));
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
                    image: NetworkImage(image),
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
            width: 350,
            height: 110,
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
