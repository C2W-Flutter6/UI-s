import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Row1
            Row(
              children: const [
                Text("Hey Dravid"),
                Spacer(),
                Image(
                  image: AssetImage('assets/home_img_1'),
                ),
              ],
            ),
            //Text1 in Container
            Container(
              width: 188,
              height: 60,
              child: const Text("Let's find your best residence"),
            ),
            //TextField
            //Row2
            //ItemBuilder
            //Row 3
            //Container
          ],
        ),
      ),
    );
  }
}
