import 'package:flutter/material.dart';
import 'package:l4pr1tt1/pages/mainpage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 72, 43, 215),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text("Welcome!",
                  style: TextStyle(color: Colors.black, fontSize: 50)),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Mainpage()));
                  },
                  icon: const Icon(
                    Icons.navigate_next_sharp,
                    grade: -25,
                    opticalSize: 100,
                    size: 70,
                    color: Color.fromARGB(255, 35, 6, 205),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
