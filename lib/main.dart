import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF7889CF),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Basics homework"),
          backgroundColor: const Color(0xFF3F54BE),
        ),
        body: const Center(
          child: ContainerStateWidget(),
        ),
      ),
    );
  }
}

class ContainerStateWidget extends StatefulWidget {
  const ContainerStateWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyStateApp();
  }
}

class _MyStateApp extends State<ContainerStateWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Tap \"-\" to decrement",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFc5caea),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _count--;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text(
                  _count.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    _count++;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
        const Text(
          "Tap \"+\" to increment",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
