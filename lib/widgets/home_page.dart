import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Notifications',
              key: const Key('notifications'),
              onPressed: () {},
            ),
            IconButton(
                icon: const Icon(Icons.dark_mode),
                key: const Key('brightness_toggle'),
                tooltip: 'Toggle brightness',
                onPressed: () {}),
          ]),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Add some content here',
            ),
          ],
        ),
      ),
    );
  }
}
