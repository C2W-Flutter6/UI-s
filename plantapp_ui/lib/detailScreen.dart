// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:developer';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Row 1: back arrow key
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    log("Icon Tapped");
                  },
                  child: const Icon(Icons.arrow_back),
                ),
              ],
            ),
            //image Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/snakePlant.png",
                  width: 250,
                  height: 230,
                ),
              ],
            ),

            //3 tiny dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(62, 102, 24, 1),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(197, 214, 181, 1),
                  ),
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(197, 214, 181, 1),
                  ),
                ),
              ],
            ),

            //Text:Snake plants
            const Text(
              textAlign: TextAlign.left,
              "Snake Plants",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color.fromRGBO(48, 48, 48, 1),
              ),
            ),

            const SizedBox(height: 8),

            //description
            const Text(
              textAlign: TextAlign.left,
              "Plants make your life with minimal \nand happy love the plants more and enjoy life.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color.fromRGBO(48, 48, 48, 1),
              ),
            ),

            //Container
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 10,
                right: 10,
              ),
              width: 320,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(118, 152, 75, 1),
              ),
              child: Column(
                children: [
                  // Row 1:height,temperature,pot
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Height container
                      Container(
                        width: 70,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/height.png",
                              width: 24,
                              height: 27,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Height",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "30cm-40cm",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Temperature container
                      Container(
                        width: 80,
                        height: 81,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/temperature.png",
                              width: 30,
                              height: 34,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Temperature",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "20'c-25'c",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Pot container
                      Container(
                        width: 64,
                        height: 74,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/potted-plant.png",
                              width: 30,
                              height: 27,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Pot",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "Ceramic Pot",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  //Row 2:Price and add to cart
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                              ),
                            ),
                            Text(
                              "₹350",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Add to cart button
                      TextButton(
                        onPressed: () {
                          log("Button tapped");
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(103, 133, 74, 1),
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          minimumSize: Size(130,
                              49), // This sets the minimum size of the button
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/shopping-bag.png",
                              width: 19,
                              height: 19,
                            ),
                            SizedBox(
                                width:
                                    8), // Replace Spacer with SizedBox for consistent spacing
                            Text(
                              "Add to Cart",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14.52,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
