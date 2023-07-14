import 'package:flutter/material.dart';
import 'package:flutter_iti_application_1/Screens/QuestionScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class CatContainer extends StatelessWidget {
  final Color color;
  final String title;
  const CatContainer({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return QuestionScreen(
                testtitle: title,
              );
            },
          ));
        },
        child: Container(
          color: color,
          child: Center(
            child: Text(title,
                style: GoogleFonts.anton(fontSize: 30, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
