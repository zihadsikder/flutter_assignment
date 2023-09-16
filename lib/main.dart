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

        title: Text("My Shooping List"),
        actions: [
          Icon(Icons.shopping_cart)
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
          child: (
              ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.shop),
                    title: Text('Apple'),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop),
                    title: Text('Bananas'),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop),
                    title: Text('Bread'),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop),
                    title: Text('Milk'),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop),
                    title: Text('Eggs'),
                  ),
                ],
              )
          ),
          ),
    );
  }
}
