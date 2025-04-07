import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("First"),
            TextButton.icon(
              onPressed: null,
              icon: Icon(Icons.wb_sunny),
              label: Text("Inspire me")
            )
          ]
        )
        ,)
    );
  }
}