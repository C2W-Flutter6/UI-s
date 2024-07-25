import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                    top: -(MediaQuery.of(context).size.height / 9),
                    left: -(MediaQuery.of(context).size.width / 10),
                    child: Circle(
                      radius: MediaQuery.of(context).size.width / 6,
                      borderColor: Colors.green[100]!,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 14,
                    left: MediaQuery.of(context).size.width / 5.5,
                    child: Circle(
                      radius: MediaQuery.of(context).size.width / 8,
                      borderColor: Colors.green[100]!,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 2.9,
                    left: MediaQuery.of(context).size.width / 2.9,
                    child: Circle(
                      radius: MediaQuery.of(context).size.width / 10,
                      borderColor: Colors.green[100]!,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 108,
              height: 55,
              child: Text(
                "Log in",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  12), // Set border radius for the container
              child: Container(
                width: 320,
                height: 50,
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: TextField(
                  onTap: () {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    prefixIcon: Transform.rotate(
                      angle: 0.1, // Adjust the angle as needed (in radians)
                      child: const Icon(
                        Icons.call,
                        color: const Color.fromRGBO(
                            164, 164, 164, 1), // Set the desired color here
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 70,
                      minHeight: 50,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Circular border radius
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(204, 211, 196, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Circular border radius
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(204, 211, 196, 1),
                      ),
                    ),
                    hintText: "Mobile Number",
                    hintStyle: GoogleFonts.inter(
                      color: const Color.fromRGBO(164, 164, 164, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 320,
              height: 50,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  //stops: [0.7, 0.3],
                  colors: [
                    Color.fromARGB(255, 79, 193, 83),
                    Color.fromARGB(255, 45, 108, 47),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(
                    const Size(double.maxFinite, 55),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Log in ",
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
