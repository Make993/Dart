import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RootPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.lightGreen),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Collo 1.0"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating Action Button");
        },
        child: const Icon(Icons.add_road_rounded),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: "Wallet"),
          NavigationDestination(
              icon: Icon(Icons.add_box_rounded), label: "0.0"),
        ],
      ),
    );
  }
}
