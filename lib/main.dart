// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My First App',
//       themeMode: ThemeMode.system,
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text("Photo Gallerry"),
//
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//            child: Column(
//              children: [
//                Text ('Welcome to Photo Gallary',
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
//                Scrollbar(
//                    thickness: 20,
//                    radius: Radius.circular(10),
//                    child: GridView(
//                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                    crossAxisCount: 2
//                  ),
//                      children: [
//                        Icon(Icons.account_circle_outlined),
//                        Icon(Icons.account_circle_outlined),
//                        Icon(Icons.account_circle_outlined),
//                        Icon(Icons.account_circle_outlined),
//                        Icon(Icons.account_circle_outlined),
//                        Icon(Icons.account_circle_outlined),
//                        Icon(Icons.account_circle_outlined),
//                        Icon(Icons.account_circle_outlined),
//                      ],
//                ))
//              ],
//            ),
//
//
//
//           ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My First App',
//       themeMode: ThemeMode.system,
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Photo Gallery"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Text(
//               'Welcome to Photo Gallery',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//             SizedBox(height: 16),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search...',
//                 contentPadding: EdgeInsets.symmetric(horizontal: 16),
//               ),
//             ),
//             SizedBox(height: 16),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                 ),
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Photo $index Clicked!'), // Customize the message here
//                         ),
//                       );
//                     },
//                     child: Card(
//                       elevation: 2,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.image, size: 50),
//                           Text('Photo $index'), // Customize the caption here
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Sample Photos',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             SizedBox(height: 8),
//             ListTile(
//               leading: Icon(Icons.image),
//               title: Text('Photo 1'),
//               subtitle: Text('DESCRIPTION for Photo 1'),
//             ),
//             ListTile(
//               leading: Icon(Icons.image),
//               title: Text('Photo 2'),
//               subtitle: Text('DESCRIPTION for Photo 2'),
//             ),
//             ListTile(
//               leading: Icon(Icons.image),
//               title: Text('Photo 3'),
//               subtitle: Text('DESCRIPTION for Photo 3'),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('Photos Uploaded Successfully!'),
//                   ),
//                 );
//               },
//               child: Icon(Icons.upload_file)//Text('Upload Photos'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
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
   Home({Key? key});
  final List<String> imagePaths = [
    'assets/blood.png',
    'assets/blood.png',
    'assets/blood.png',
    'assets/blood.png',
    'assets/blood.png',
    'assets/blood.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Welcome to Photo Gallery',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search...',
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Photo $index Clicked!'),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              imagePaths[index],
                              width: 100,
                              height: 100
                          ),
                          Text('Photo $index'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: ClipOval(
                        child: Image.asset('assets/blood.png',
                            fit : BoxFit.cover
                        ),
                    ),
                    title: Text('Photo 1'),
                    subtitle: Text('Description for Photo 1'),
                  ),
                  ListTile(
                    leading: ClipOval(
                        child: Image.asset('assets/bbbb.png',
                          fit: BoxFit.cover,
                        )
                    ),
                    title: Text('Photo 2'),
                    subtitle: Text('Descroption for Photo 2'),
                  ),
                  ListTile(
                    leading: Icon(Icons.image),
                    title: Text('Photo 3'),
                    subtitle: Text('Description for Photo 3'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Photos Uploaded Successfully!'),
                  ),
                );
              },
              child: Icon(Icons.upload_file),
            ),
          ],
        ),
      ),
    );
  }
}
