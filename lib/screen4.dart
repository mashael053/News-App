import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              // Add your back button logic here
            },
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hot Update',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gentium_Book_Plus',
                color: Color(0xFFFF3A44),
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8), 
              Image.asset(
                'assets/Frame32.png',
                width: double.infinity,
                height: screenHeight * 0.2,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 10),
              Text(
                'Monday, 10 May 2021',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(99, 0, 0, 0),
                  fontWeight: FontWeight.normal,
                fontFamily: 'Gentium_Book_Plus',
                ),
              ),
              Text(
                ' WHO classifies triple-mutant Covid variant from India as global health risk',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                    fontWeight: FontWeight.bold,
                fontFamily: 'Gentium_Book_Plus',
                  
                ),
              ),
              RichText(
  text: TextSpan(
    style: TextStyle(color: Colors.black, fontFamily: 'GentiumBookPlus', fontSize: 14 ,   fontWeight: FontWeight.normal,),
    children: [
      TextSpan(
        text: "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...",
      ),
      
      TextSpan(
        text: "Read more",
        style: TextStyle(
          color: Colors.blue,
          fontFamily: 'GentiumBookPlus',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
),
Text("Published by Berkeley Lovelace Jr." , 
style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontFamily: 'GentiumBookPlus', fontSize: 16,),),

                
              SizedBox(height: 16),
              Image.asset(
                'assets/Frame.png',
                width: screenWidth,
                height: screenHeight * 0.2,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 8),
              Text(
                'Sunday, 9 May 2021',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(99, 0, 0, 0),
                  fontWeight: FontWeight.normal,
                fontFamily: 'Gentium_Book_Plus',
                ),
              ),
              Text(
                'What to do if youre planning or attending a wedding during the pandemic' , 
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                    fontWeight: FontWeight.bold,
                fontFamily: 'Gentium_Book_Plus',
                  
                ),
              ),



              // Text Read More //

                  RichText(
  text: TextSpan(
    style: TextStyle(color: Colors.black, fontFamily: 'GentiumBookPlus', fontSize: 14 ,   fontWeight: FontWeight.normal,),
    children: [
      TextSpan(
        text: "They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... Read More",
      ),
      
      TextSpan(
        text: "Read more",
        style: TextStyle(
          color: Colors.blue,
          fontFamily: 'GentiumBookPlus',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
),

Text("Published by Berkeley Lovelace Jr." , 
style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontFamily: 'GentiumBookPlus', fontSize: 16,),),
            ],
          ),
        ),
      ),
    );
  }
}