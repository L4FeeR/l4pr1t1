import 'package:flutter/material.dart';
import 'package:l4pr1tt1/pages/last_page.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final TextEditingController _controller = TextEditingController();
  String _idname = "";
  String printName() {
    String nname = _controller.text;
    String name;
    if (nname == "") {
      name = "Anonymous";
    } else {
      name = nname;
    }
    //print("$name");
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 88, 23, 209),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Gimme Your Name...",
                style: TextStyle(
                  color: Color.fromARGB(255, 15, 7, 234),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: _controller,
                  autofocus: true,
                  cursorOpacityAnimates: true,
                  strutStyle: const StrutStyle(
                      fontWeight: FontWeight.w900,
                      leading: 1,
                      fontSize: 10,
                      leadingDistribution:
                          TextLeadingDistribution.proportional),
                  cursorWidth: 2,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: "         Muhamed Lafeer",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)))),
                ),
              ),
              //const SizedBox(
              //    height: 20,
              //    )
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            printName();
            _idname = printName();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LastPage()));
          },
          icon: const Icon(
            Icons.navigate_next_sharp,
            applyTextScaling: true,
            size: 90,
            color: Colors.black,
          )),
    ));
  }
}
