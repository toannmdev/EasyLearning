import 'package:flutter/material.dart';

class WidgetTreeExample extends StatelessWidget {
  const WidgetTreeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black87,
        ),
        title: const Text(
          "WidgetTreeExample",
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          TextButton(
              onPressed: () {
                print("Click on Action");
              },
              child: const Text("Action")),
        ],
      ),
      body: Container(
        color: Colors.blueGrey[700],
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.access_alarms, size: 80),
                  SizedBox(width: 8),
                  Text(
                    "Timeup",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Image.asset("assets/images/timeup.png", width: 180, height: 200)
          ],
        ),
      ),
    );
  }
}