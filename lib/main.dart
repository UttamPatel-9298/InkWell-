import 'package:flutter/material.dart';
import 'package:ink_well/Screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inkwell Demo'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'This is how to use inkwell widget on the non pressable widgets ',
                style: TextStyle(fontSize: 21),
              ),
            ),
            Text(
              'Click on the text, which is under there for navigate to next screen',
              style: TextStyle(fontSize: 21),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
              child: Text('Click me for Navigate'),
            ),
          ],
        ),
      ),
    );
  }
}
