import 'package:flutter/material.dart';
import 'package:g_stack/LabeledTextField.dart';
import 'package:g_stack/TextButtonLayers.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // variables
  final double textFieldWidth = 250;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 46, 59),
                ),
              ),
              Container(
                height: 500,
                width: 380,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 3, 25, 31),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LabeledTextField(textData: "Username"),
                    LabeledTextField(textData: "Email"),
                    LabeledTextField(textData: "Password"),
                    LabeledTextField(textData: "Password Confirmation"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  const TextButtonLayers(containerHeight: 160),
                  const TextButtonLayers(containerHeight: 140),
                  const TextButtonLayers(containerHeight: 120),
                  const TextButtonLayers(containerHeight: 100),
                  const TextButtonLayers(containerHeight: 80),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const CircleBorder(),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        const Size.fromRadius(80),
                      ),
                      overlayColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.2)), // Splash color
                    ),
                    // )
                    // styleFrom(
                    //   shape: const CircleBorder(),
                    //   fixedSize: const Size.fromRadius(80),
                    // ).copyWith(
                    //   overlayColor: MaterialStateProperty.all(
                    //       Colors.black.withOpacity(0.2)), // Splash color
                    // ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
