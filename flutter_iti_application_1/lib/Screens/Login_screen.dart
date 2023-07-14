import 'package:flutter/material.dart';
import 'package:flutter_iti_application_1/Screens/Categories.dart';
import 'package:flutter_iti_application_1/Global/global.dart';

// import 'package:flutter_iti_application_1/Screens/Categories.dart';
import 'package:flutter_iti_application_1/Widgets/custom_button.dart';
// import 'package:flutter_iti_application_1/Widgets/custom_text_button.dart';

class LoginScreen extends StatefulWidget {
  static const String screenName = "login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "images/126.jpg",
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.33,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          key: formKey,
                          child: TextFormField(
                            validator: (data) {
                              final RegExp regex = RegExp(r'^[A-Z][a-zA-Z]*$');

                              if (data!.isEmpty) {
                                return "this field is requied!";
                              } else if (data.length < 9) {
                                return "Email should be more than 9 characters";
                              } else if (!regex.hasMatch(data)) {
                                return 'Please your name with first letter in uppercase';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "username",
                              prefixIcon: const Icon(Icons.person),
                              enabledBorder: border,
                              border: border,
                            ),
                          ),
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     hintText: "username",
                        //     prefixIcon: const Icon(Icons.person),
                        //     enabledBorder: OutlineInputBorder(
                        //         borderSide:
                        //             const BorderSide(color: Colors.grey),
                        //         borderRadius: BorderRadius.circular(20)),
                        //     border: OutlineInputBorder(
                        //         borderSide:
                        //             const BorderSide(color: Colors.grey),
                        //         borderRadius: BorderRadius.circular(20)),
                        //   ),
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "password",
                            prefixIcon: const Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            const Text("New To Quiz?"),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Register?"))
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 130,
                          height: 50,
                          child: CustomButton(
                              fontSize: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              text: "Login",
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context)
                                      .pushNamed(CategoryScreen.screenName);
                                }
                              }),
                        ),
                        // Container(
                        //   width: 200,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(20)),
                        //   child: ElevatedButton(
                        //       style: ButtonStyle(
                        //           shape: MaterialStateProperty.all(
                        //               RoundedRectangleBorder(
                        //                   borderRadius:
                        //                       BorderRadius.circular(30)))),
                        //       onPressed: () {
                        //         Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => Categories()),
                        //         );
                        //       },
                        //       child: const
                        //       Text(
                        //         "Login",
                        //         style: TextStyle(fontSize: 20),
                        //       )),
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "images/Touch_ID_logo.png",
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Use Touch ID",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: true,
                                onChanged: (onChanged) {},
                                activeColor: Colors.grey),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Remember me?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
