import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// Sample JSON data
  final String jsonData = '[ { "city": "New York", "temperature": 20, "condition": "Clear", "humidity": 60, "windSpeed": 5.5 }, { "city": "Los Angeles", "temperature": 25, "condition": "Sunny", "humidity": 50, "windSpeed": 6.8 }, { "city": "London", "temperature": 15, "condition": "Partly Cloudy", "humidity": 70, "windSpeed": 4.2 }, { "city": "Tokyo", "temperature": 28, "condition": "Rainy", "humidity": 75, "windSpeed": 8.0 }, { "city": "Sydney", "temperature": 22, "condition": "Cloudy", "humidity": 55, "windSpeed": 7.3 } ]';

  // List to hold parsed JSON data
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();

    // Parse the JSON data
    items = json.decode(jsonData).cast<Map<String, dynamic>>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text('Weather Info App'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Container(

            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(left: 20,top: 10,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, // Color of the shadow
                  offset: Offset(0, 3), // Offset of the shadow (x, y)
                  blurRadius: 6, // Spread of the shadow
                  spreadRadius: 0,
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("City: ${item['city']}",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Temperature: ${item['temperature']}"),
                Text("Condition: ${item['condition']}"),
                Text("Humidity: ${item['humidity']}"),
                Text("WindSpeed: ${item['windSpeed']}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
