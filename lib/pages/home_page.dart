import 'package:flutter/material.dart';
import 'package:vibes_veggies/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vibes Veggies'),
      ),
      drawer: const MyDrawer(),
    );
  }
}
