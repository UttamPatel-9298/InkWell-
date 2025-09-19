import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenTwoPage(),
      title: 'Screen Two',
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScreenTwoPage extends StatefulWidget {
  const ScreenTwoPage({super.key});

  @override
  State<ScreenTwoPage> createState() => _ScreenTwoPageState();
}

class _ScreenTwoPageState extends State<ScreenTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen Two'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('This is Screen Two'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('On Press on the Text You Navigated to Screen Two'),
            ),
          ],
        ),
      ),
    );
  }
}
