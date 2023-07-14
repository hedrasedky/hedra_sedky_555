import 'package:flutter/material.dart';
import 'package:flutter_iti_application_1/Screens/ScoreScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Opening_screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key, required String testtitle});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * (1 / 8),
              child: AppBar(
                backgroundColor: Color.fromARGB(255, 248, 220, 1),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  'General Test',
                  style: GoogleFonts.lobster(
                    fontSize: 24.0,
                    color: Color.fromARGB(255, 7, 21, 227),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset(
                        'images/chat.png',
                        fit: BoxFit.contain,
                        color: Color.fromARGB(255, 7, 21, 227),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OpeningScreen()),
                      );
                    },
                    iconSize: 100.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 1 / 15,
            ),
            Container(
              width: screenSize.width - 17,
              height: screenSize.height * 1 / 6,
              child: Card(
                color: Color.fromRGBO(246, 241, 248, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q 1',
                        style: GoogleFonts.pacifico(
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2.0,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'كل كام عام يقام كاس العالم ?',
                        style: GoogleFonts.pacifico(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 2 / 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Choices is :",
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScoreScreen()),
                  );
                },
                child: Text(
                  '4 ',
                  style: GoogleFonts.pacifico(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(1, 183, 255, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScoreScreen()),
                  );
                },
                child: Text(
                  '2 ',
                  style: GoogleFonts.pacifico(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(1, 183, 255, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScoreScreen()),
                  );
                },
                child: Text(
                  '3 ',
                  style: GoogleFonts.pacifico(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(1, 183, 255, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScoreScreen()),
                  );
                },
                child: Text(
                  '5 ',
                  style: GoogleFonts.pacifico(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(1, 183, 255, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
