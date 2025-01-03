import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // variables
  final double ContainerHeight = 250;
  final double ContainerWidth = 380;
  final double textFieldWidth = 250;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              height: ContainerHeight,
              width: ContainerWidth,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 46, 59),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: EdgeInsets.only(
                  top: 150,
                  left:
                      (MediaQuery.of(context).size.width - ContainerWidth) / 2),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                          width: textFieldWidth,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Email',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                          width: textFieldWidth,
                          height: 40,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Password',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                          width: textFieldWidth,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Confirm',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                          width: textFieldWidth,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
