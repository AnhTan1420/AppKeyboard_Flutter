import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;
  final keyboardType;
  final controller;

  const InputTextWidget(
      {required this.labelText,
      required this.obscureText,
      required this.keyboardType,
      this.controller,
      required this.hintText})
      : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 12.0),
      child: Material(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 15.0),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              // begin: Alignment.topRight,
              // end: Alignment.bottomLeft,
              colors: [
                Colors.green,
                Colors.lightGreen,
              ],
            )),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: screenWidth,
                      height: screenHeight,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 25, left: 25),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: const Text(
                                'Forgot-password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          // SingleChildScrollView(
                          //   scrollDirection: Axis.vertical,
                          Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  InputTextWidget(
                                      controller: _emailController,
                                      labelText: "Email",
                                      hintText: "Your email",
                                      obscureText: false,
                                      keyboardType: TextInputType.emailAddress),
                                  const SizedBox(
                                    height: 50.0,
                                  ),
                                  Container(
                                    height: 55.0,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        if (_formKey.currentState!.validate()) {
                                          print("Submit tapping");
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        elevation: 0.0,
                                        minimumSize: Size(screenWidth, 100),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                      ),
                                      child: Ink(
                                        decoration: BoxDecoration(
                                            color: const Color(
                                                0xff1E5128), // Color(0xffF05945),
                                            borderRadius:
                                                BorderRadius.circular(12.0)),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "Submit",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                                child: Wrap(
                              children: [
                                Material(
                                    child: InkWell(
                                  onTap: () {
                                    print("sign up tapped");
                                    Navigator.of(context).pushReplacementNamed(
                                        LoginScreen.routeName);
                                  },
                                  child: Text(
                                    "Back to Log-in",
                                    style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                )),
                              ],
                            )),
                          ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
