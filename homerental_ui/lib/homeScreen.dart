import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  //var rate;
  List<String> rate = ['5900', '4900', '3900'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Row1
            Row(
              children: [
                const Text("Hey Dravid,",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                const Spacer(),
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: const ClipOval(
                    child: Image(
                      image: AssetImage('assets/home_img_1.png'),
                    ),
                  ),
                ),
              ],
            ),
            //Text1 in Container
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  width: 400,
                  height: 150,
                  child: const Text("Let's find your best residence",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            //TextField
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  width: 446,
                  height: 66,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search your favourite paradise",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //Row2
            const Row(
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(32, 169, 247, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //ItemBuilder
            SizedBox(
              height: 400, // Adjust height as per your design
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: rate.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 211,
                    height: 306, // Adjust width as per your design
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //image row

                        const Stack(
                          children: [
                            Image(
                              image: AssetImage('assets/home_img_2.jpg'),
                              width: 100, // Add a width constraint
                              height: 100, // Add a height constraint
                              fit: BoxFit
                                  .cover, // Ensure the image fits within the constraints
                            ),
                            Positioned(
                              top: 50,
                              right: 70,
                              width: 45,
                              height: 21.56,
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    "4.9",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Row2
                        //SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Night Hill Villa",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            //SizedBox(height: 10),
                            Text(
                              "London, Night Hill",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "${rate[index]}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "/Month",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
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
            )

            //Row 3
            //Container
          ],
        ),
      ),
    );
  }
}
