import 'package:flutter/material.dart';

// ignore: camel_case_types
class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 246, 250),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/bg_img_1.webp",
              color: Colors.white.withOpacity(0.1), // Adjust opacity as needed
              colorBlendMode: BlendMode.srcATop,
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(2),
              height: 100,
              //color: Colors.grey,
              child: Text.rich(
                TextSpan(
                  text: "Enjoy your \nlife with ",
                  style: TextStyle(
                    fontSize: 22,
                    height: 2,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "PLANTS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  //stops: [0.7, 0.3],
                  colors: [
                    const Color.fromARGB(255, 68, 170, 72),
                    const Color.fromARGB(255, 27, 67, 28),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(
                    Size(double.maxFinite, 55),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Get Started  > ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
