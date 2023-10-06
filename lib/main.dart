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
      home: SizeSelector(),
    );
  }
}

class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = '';
  final List<String> sizes = ['X', 'L', 'M', 'XL', 'XXL', 'XXXL'];

  void _onSizeButtonPressed(String size) {
    setState(() {
      selectedSize = size;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
      ),
    );
  }

  ElevatedButton _buildSizeButton(String size) {
    final isSelected = selectedSize == size;
    return ElevatedButton(
      onPressed: () => _onSizeButtonPressed(size),
      child: Text(size),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          isSelected ? Colors.green : Colors.blue,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Size'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++) _buildSizeButton(sizes[i]),
                ],
              ),
            ),
            Center(
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  for (int i = 4; i < sizes.length; i++) _buildSizeButton(sizes[i]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
