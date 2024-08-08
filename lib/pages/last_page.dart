import 'dart:io';
import 'package:flutter/material.dart';
import 'package:l4pr1tt1/main.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final instance = Mainpage();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: const Color.fromARGB(255, 73, 16, 216),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 42, 6, 241),
              forceMaterialTransparency: false,
              centerTitle: true,
              title: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '<l4>', style: TextStyle()),
                    TextSpan(
                        text: 'L4FeeR',
                        style: TextStyle(
                            color: Color.fromARGB(255, 114, 92, 238))),
                    TextSpan(text: "</l4>")
                  ],
                ),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 73, 16, 216),
            body: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Four Hours of code!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 106, 222, 172),
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Simply Waste!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 149, 222, 38),
                          fontSize: 30)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Nothing TO Say!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 39, 121, 210),
                          fontSize: 30)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Avlothaan",
                      style: TextStyle(color: Colors.red, fontSize: 30)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("            Bye Bye...",
                      style: TextStyle(color: Colors.limeAccent, fontSize: 30)),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 50,
                              color: Colors.black26,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyApp()));
                            }),
                        const SizedBox(width: 20),
                        IconButton(
                            icon: const Icon(
                              Icons.exit_to_app,
                              size: 50,
                              color: Colors.black26,
                            ),
                            onPressed: () {
                              exit(1);

                              null;
                            }),
                      ]),
                ],
              ),
            )));
  }
}
