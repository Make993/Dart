import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: () {}, child: const Text("Collo 2.0")),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Home(),
    ),
  ));
}
