import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              margin: EdgeInsets.only(
                  top: 150,
                  left: (MediaQuery.of(context).size.width - 200) / 2),
            )
          ],
        ),
      ),
    );
  }
}
