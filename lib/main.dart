import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() => runApp(
DevicePreview(
enabled: true,
builder: (context) => MyApp(), // Wrap your app
),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          title: 'flutter app',
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      }
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/zihad.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Zihad Sikder',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
                'Iam a student of world university of Bangladesh. CSE Department. I love cooding'),
            SizedBox(height: 8,),
            Expanded(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isPortrait ? 3 : 3,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: Container(
                          child: Image.asset('assets/zihad.jpg'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
