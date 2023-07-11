import 'package:flutter/material.dart';


class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(".appable/"), leading: Icon(Icons.ondemand_video)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart_outlined),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "Sub-Heading",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Paragraph",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child:
              Image(image: AssetImage("assets/images/action_game_png.png")),
            ),
          ],
        ),
      ),
    );
  }
}