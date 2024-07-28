import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Container to manage the size of the Stack and its position
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  child: Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height / -10,
                        right: MediaQuery.of(context).size.width / 6,
                        child: Circle(
                          radius: MediaQuery.of(context).size.width / 4.5,
                          borderColor: const Color.fromRGBO(174, 189, 159, 1),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / -15,
                        right: MediaQuery.of(context).size.width / 100,
                        child: Circle(
                          radius: MediaQuery.of(context).size.width / 7,
                          borderColor: const Color.fromRGBO(174, 189, 159, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Additional space to ensure the Row is not overlapped by the circles
          Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 20, top: 15), // Adjust as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Find your \nfavourite plants",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      const BoxShadow(
                        blurRadius: 16.1,
                        offset: Offset(0, 4),
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                      ),
                    ],
                  ),
                  child: const Icon(
                    // size: 1.67,
                    color: Color.fromRGBO(62, 102, 24, 1),
                    Icons.shopping_bag_outlined,
                  ),
                )
              ],
            ),
          ),
          // Add more widgets as needed
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 108,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 310,
                  height: 108,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(204, 231, 185, 1),
                  ),
                  child: Row(
                    children: [
                      //Column 1: Dsicount and date
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "30% off",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "02-23 April",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      //Column 2: Image
                      Column(
                        //image
                        children: [
                          Image.asset("assets/listView_plant"),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: 3,
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
