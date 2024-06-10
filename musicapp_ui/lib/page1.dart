import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State createState() => _GetStartedState();
}

class _GetStartedState extends State {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
            //color: Colors.black,
            image: DecorationImage(image: AssetImage("assets\\img1.jpg"))),
        // child: Column(
        //   children: [
        //     //Image
        //     const Image(
        //       fit: BoxFit.fill,
        //       image: NetworkImage(
        //           "https://s3-alpha-sig.figma.com/img/e677/92e0/4de234e183c690ef21d52f623af92167?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=no59se2D6u5~YaE5hNM7Nne8IxbDFV3~ksBPhPP2zllR9UxG-Q6aYghAVwdCU7QLRcCyzsj9gdqwiARSLFk~~BWdhkAy2JfnygtU73GUnMnrsUmd7ynjQ1wxVLkuEp-CpPl39i~3VVJrgPbzaO3yEGcnhA9hbwpEv536~UY02fhfRbeIse-DG14hKzz7JUIXbPgt973Fi41NuuzsXzRyYJHp-2f-50NGT8ENo~lxlemghFj8GNg0epuY8YoYq2hXK76~JPVH9rNr6QF9I0AsU8oDByLaAwDEBj4bbtnwGOaPfPY0Zkrl2rMo2Yfe2OIoH4fLUz8GxZDdg2FwrFEZuQ__.jpeg"),
        //     ),
        //     //2 Elevated Buttons
        //     ElevatedButton(
        //       onPressed: () {},
        //       child: const Text("Button 1"),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {},
        //       child: const Text("Button 2"),
        //     ),
        //     //Text
        //     const Text(""),
        //   ],
        // ),
      ),
    );
  }
}
