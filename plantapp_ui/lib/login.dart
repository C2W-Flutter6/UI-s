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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.2,
              child: Stack(
                children: [
                  Positioned(
                    top: -(MediaQuery.of(context).size.height / 18),
                    left: -(MediaQuery.of(context).size.width / 9),
                    child: Circle(
                      radius: MediaQuery.of(context).size.width / 5.5,
                      borderColor: Colors.green[100]!,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 30,
                    left: MediaQuery.of(context).size.width / 6,
                    child: Circle(
                      radius: MediaQuery.of(context).size.width / 10,
                      borderColor: Colors.green[100]!,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 9,
                    left: MediaQuery.of(context).size.width / 3.5,
                    child: Circle(
                      radius: MediaQuery.of(context).size.width / 14,
                      borderColor: Colors.green[100]!,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              child: Text(
                "Log in",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 320,
                height: 40,
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: TextField(
                  onTap: () {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    contentPadding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    prefixIcon: Transform.rotate(
                      angle: 0.1, // Adjust the angle as needed (in radians)
                      child: const Icon(
                        Icons.call,
                        color: Color.fromRGBO(164, 164, 164, 1),
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 50,
                      minHeight: 50,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(204, 211, 196, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(204, 211, 196, 1),
                      ),
                    ),
                    hintText: "Mobile Number",
                    hintStyle: GoogleFonts.inter(
                      color: const Color.fromRGBO(164, 164, 164, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 8,
              ),
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 79, 193, 83),
                    Color.fromARGB(255, 45, 108, 47),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Image.asset("assets/plant_img_2.png"),
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
