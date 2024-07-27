// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => VerificationPageState();
}

class VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Row1 -> Arrow key + circles
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    log("Icon Tapped");
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.1,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -(MediaQuery.of(context).size.height / 20),
                          right: -(MediaQuery.of(context).size.width / 8),
                          child: Circle(
                            radius: MediaQuery.of(context).size.width / 5,
                            borderColor: Colors.green[100]!,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height / 45,
                          right: MediaQuery.of(context).size.width / 6,
                          child: Circle(
                            radius: MediaQuery.of(context).size.width / 7,
                            borderColor: Colors.green[100]!,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height / 9,
                          right: MediaQuery.of(context).size.width / 3,
                          child: Circle(
                            radius: MediaQuery.of(context).size.width / 9,
                            borderColor: Colors.green[100]!,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //Verification text
                Text(
                  "Verification",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15),
                //"Enter OTP that we sent" text
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      "Enter the OTP code from the phone we \njust sent you.",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //OTP boxes
                Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            blurRadius: 10,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(255, 255, 255, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            blurRadius: 10,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(255, 255, 255, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            blurRadius: 10,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(255, 255, 255, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        //color: Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            blurRadius: 10,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(255, 255, 255, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //Resend code
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Didn't receive OTP code? ",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Resend",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  log("Resend code");
                                }),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //Submit Button
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 8,
                  ),
                  width: 320,
                  height: 45,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 40,
                        offset: Offset(0, 30),
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 79, 193, 83),
                        Color.fromARGB(255, 45, 108, 47),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  final double radius;
  final Color borderColor;

  const Circle({super.key, required this.radius, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2.0),
        color: Colors.transparent,
      ),
    );
  }
}
