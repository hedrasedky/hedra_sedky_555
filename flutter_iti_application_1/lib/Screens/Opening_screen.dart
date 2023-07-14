import 'package:flutter/material.dart';
import 'package:flutter_iti_application_1/Screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> myList=[1,1.2,"",true,null];

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/abstract-uv-ultraviolet-light-composition_23-2149243965.jpg?w=826&t=st=1688937576~exp=1688938176~hmac=28c8167e99fda309c3347139d98fe535f9efcfe5b5146650df25ca26ecbc4996"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            //I.Q: diff between S.between/ S.around/ Space evently
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,

            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
              ),

              Image.asset(
                "images/quizzzz.png",
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              // Image.network(
              //     "https://www.shutterstock.com/image-vector/quiz-check-speech-bubble-sign-260nw-281084969.jpg")
              Text("First New Quiz App",
                  style: GoogleFonts.abrilFatface(
                    color: Color.fromARGB(255, 255, 20, 51),
                    fontSize: 40,
                  )

                  // TextStyle(
                  //     color: Colors.yellow,
                  //     fontSize: 25,
                  //     fontWeight: FontWeight.bold),
                  ),
              const SizedBox(
                height: 30,
              ),
              Text("We Are Creative, enjoy our App",
                  style: GoogleFonts.patuaOne(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  )

                  //  TextStyle(
                  //   color: Color.fromARGB(255, 255, 255, 255),
                  //   fontSize: 20,
                  // ),
                  ),

              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),

              Spacer(),

              //I.Q
              //diff between margin and padding:
              //1- margin: space between item and surrounddings
              //2- padding: space between itme and his child

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 40, horizontal: 26),
                // padding: EdgeInsets.all(20),

                child: ElevatedButton(
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all(Colors.green),
                    // ),
                    onPressed: () {
                      // print("hello iam omar")

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );

                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LoginScreen()),
                      //   (route) => false,
                      // );
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ),

              // Checkbox(
              //   value: true,
              //   onChanged: (value) {},
              // ),
              // Radio(
              //   value: "groupValue",
              //   groupValue: "groupValue",
              //   onChanged: (value) {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
