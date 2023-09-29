import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      debugShowCheckedModeBanner: false,
      home: ImageFeed(),
    );
  }
}


class ImageFeed extends StatelessWidget {
  final List<String> imageUrls = List.generate(
    20,
        (index) => 'assets/download.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Feed'),
        backgroundColor: Colors.yellowAccent,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? buildPortrait()
              : buildLandscape();
        },
      ),
    );
  }

  Widget buildPortrait() {
    return ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            // width: 150,
            // height: 150,
            child: Center(
              child: Image.asset(
                imageUrls[index],
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildLandscape() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Adjust the number of columns as needed
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrls[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}