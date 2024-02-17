import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children: [
            Center(
              child: Text("Home"),
            )
          ],
        ));
  }
}
