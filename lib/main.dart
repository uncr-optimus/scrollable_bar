import 'package:flutter/material.dart';
import 'package:scrollable_bar/widget/athletes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scorallable Bar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(232, 163, 154, 240),
        ),
        useMaterial3: true,
      ),
      home: const ScrollableBar(
        title: 'Scrollable Bar',
      ),
    );
  }
}

class ScrollableBar extends StatelessWidget {
  const ScrollableBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        title: Text(
          '$title',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 28),
        ),
        backgroundColor: Color.fromARGB(255, 241, 238, 20),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              for (final category in availableCategory)
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  margin: const EdgeInsets.all(08),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          category.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.deepPurple),
                        ),
                        Text(
                          category.level,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
