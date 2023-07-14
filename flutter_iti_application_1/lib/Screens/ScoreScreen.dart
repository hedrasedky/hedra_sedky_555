import 'package:flutter/material.dart';
import 'package:flutter_iti_application_1/Screens/login_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 234, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 1 / 3,
              ),
              RichText(
                text: TextSpan(
                  text: 'Hello,',
                  style: GoogleFonts.courgette(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'hedra',
                      style: GoogleFonts.chango(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.0,
                        fontSize: 40,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Your Score is 1 / 1 ',
                  style: GoogleFonts.courgette(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 1 / 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Rest Quiz',
                    style: GoogleFonts.luckiestGuy(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(0, 0, 255, 1)),
                    minimumSize: MaterialStateProperty.all<Size>(Size(
                        screenSize.width, screenSize.height * (1 / 8) - 16)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                    ),
                    elevation: MaterialStateProperty.all<double>(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
