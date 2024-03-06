import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Elevated Button tutorial"),
        ),
        body: Material(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text("Click"),
                  onPressed: () {
                    print("Outlined Button is Pressed");
                  },
                  onLongPress: () {
                    print("Outlined Button is On Long Pressed");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
