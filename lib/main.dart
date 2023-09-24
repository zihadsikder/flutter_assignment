import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counting App',
      debugShowCheckedModeBanner: false,
      home: CountingScreen(),
    );
  }
}

class CountingScreen extends StatefulWidget {
  @override
  _CountingScreenState createState() => _CountingScreenState();
}

class _CountingScreenState extends State<CountingScreen> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
      if (count >= 5) {
        showCountDialog(count);
      }
    });
  }

  void decrementCount() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void showCountDialog(int count) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Button pressed $count times'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Counting App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Count: $count',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: incrementCount,
                  child: Text('+'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decrementCount,
                  child: Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
