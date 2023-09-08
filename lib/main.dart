import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: [
          Icon(Icons.search)
        ],
        elevation: 70,

        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is mod 5 Assignment ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                //color: Colors.green,
              ),
            ),
            SizedBox(height: 8),
            RichText(text:
            TextSpan(
              text: "My ",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red,
            ),
              children: [
                TextSpan(
                  text: "phone ",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                    text: "name ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                    ),
                ),
                TextSpan(
                  text: "Redmi Note 8 Pro",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow.shade900,
                  ),
                ),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
