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
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Circles at the top
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

            //Find your fav plants row
            Padding(
              padding:
                  const EdgeInsets.only(right: 20, top: 15), // Adjust as needed
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
                      boxShadow: const [
                        BoxShadow(
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

            //ListView Builder for Discount items
            Container(
              height: 108, // Adjust height as needed
              //padding: EdgeInsets.only(left: 20),
              margin: const EdgeInsets.only(top: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(right: 20), // Space between items
                    padding: const EdgeInsets.all(18),
                    width: 270,
                    height: 108,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(204, 231, 185, 1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Align children at the start
                      children: [
                        // Column 1: Discount and date
                        const Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align text to the start
                            children: [
                              Text(
                                "30% off",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "02-23 April",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Space between text and image
                        // Column 2: Image
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment
                                .centerRight, // Align image to the right
                            child: Image.asset(
                              "assets/listView_plant.png",
                              fit: BoxFit.cover,
                              width: 120,
                              height: 108,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            //3 small dots
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
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
            ),

            //indoor text
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Indoor",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),

            //Listview 2: Snake plant
            Container(
              height: 188,
              margin: const EdgeInsets.only(top: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(right: 20), // Space between items
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 188,
                    width: 141,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(204, 231, 185, 1),
                    ),
                    child: Column(
                      children: [
                        //Image
                        Image.asset(
                          "assets/plant_img_2.png",
                          width: 92.24,
                          height: 112,
                        ),
                        //Snake Plant name
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Snake Plants",
                              style: TextStyle(
                                fontSize: 15.16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        //Price and shopping bag
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Price

                            const Column(
                              children: [
                                Text(
                                  "₹350",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),

                            const Spacer(),

                            //shopping bag
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(2),
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    boxShadow: const [
                                      BoxShadow(
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
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
