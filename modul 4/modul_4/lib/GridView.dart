import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GridViewExample(),
    );
  }
}

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView Example")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(6, (index) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.teal[(index + 1) * 100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  [
                    "He'd have you all unravel at the",
                    "Heed not the rabble",
                    "Sound of screams but the",
                    "Who scream",
                    "Revolution is coming...",
                    "Revolution, they...",
                  ][index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
