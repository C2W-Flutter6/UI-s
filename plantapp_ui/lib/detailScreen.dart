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
        padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
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
                  width: 195,
                  height: 243,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
