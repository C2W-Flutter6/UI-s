// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    // Get the screen height
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight *
                0.8, // Set the height to 80% of the screen height
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img1.jpg"),
                  fit: BoxFit.cover, // Ensure the image covers the container
                ),
              ),
              child: Stack(
                children: [
                  // Text 1 : Dancing between the shadows....
                  Positioned(
                    top: 310, // Adjust the top value
                    left: 20, // Added left padding for better positioning
                    child: Text(
                      "Dancing between\nThe shadows\nOf rhythm",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        height: 1.2, // Adjusted line height
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Button 1: Second text
                  Positioned(
                    top: 465, // Adjust the top value
                    left: 70, // Added left padding for better positioning
                    child: SizedBox(
                      width: 221,
                      height: 47,
                      child: ElevatedButton(
                        onPressed: () {
                          log("Get started");
                        },
                        style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(
                            Color.fromRGBO(255, 46, 0, 1),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: const Color.fromRGBO(19, 19, 19, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Button 2: Continue with email
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 70,
            ),

            width: 221,
            height: 37,
            //color: Colors.blueAccent,

            child: ElevatedButton(
              onPressed: () {
                log("Continue with email");
              },
              child: Text(
                textAlign: TextAlign.center,
                "Continue with Email",
                style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 46, 0, 1),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Color.fromRGBO(19, 19, 19, 1),
                ),
                side: WidgetStateProperty.all(
                  const BorderSide(color: Colors.red, width: 2),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 100, right: 40, top: 15),
            child: Text(
              "By continuing you agree to terms \nof services and  Privacy policy",
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(203, 200, 200, 1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
