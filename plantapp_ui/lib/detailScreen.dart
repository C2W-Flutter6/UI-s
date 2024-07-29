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
            const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
        child: Column(
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
                  height: 243,
                ),
              ],
            ),

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
                  margin: const EdgeInsets.only(left: 5, right: 5),
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
            const Text(
              "Snake Plants",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color.fromRGBO(48, 48, 48, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
