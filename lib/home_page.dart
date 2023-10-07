
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int c1 = 1, c2 = 1, c3 = 1;
  int amount = 100 + 150 + 200;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.03;
    double buttonSize = screenWidth * 0.08;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Bag',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              // Pullover Card
              buildItemCard(
                'Shirt',
                'Red',
                'L',
                100,
                'assets/shirt.jpeg',
                c1,
                    () {
                  setState(() {
                    c1++;
                    amount += 100;
                  });
                },
                    () {
                  setState(() {
                    if (c1 > 0) {
                      c1--;
                      amount -= 100;
                    }
                  });
                },
                fontSize,
                buttonSize,
              ),
              SizedBox(height: 20),
              // T-Shirt Card
              buildItemCard(
                'Pant',
                'Blue',
                'XL',
                150,
                'assets/pant.jpeg',
                c2,
                    () {
                  setState(() {
                    c2++;
                    amount += 150;
                  });
                },
                    () {
                  setState(() {
                    if (c2 > 0) {
                      c2--;
                      amount -= 150;
                    }
                  });
                },
                fontSize,
                buttonSize,
              ),
              SizedBox(height: 20),
              // Sport Dress Card
              buildItemCard(
                'Panjabi',
                'Black',
                'L',
                200,
                'assets/panjabi.jpeg',
                c3,
                    () {
                  setState(() {
                    c3++;
                    amount += 200;
                  });
                },
                    () {
                  setState(() {
                    if (c3 > 0) {
                      c3--;
                      amount -= 200;
                    }
                  });
                },
                fontSize,
                buttonSize,
              ),
              SizedBox(height: 20),
              // Total Amount
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total amount:',
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    '$amount\$',
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Checkout Button
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Congratulations!')),
                  );
                },
                child: Text(
                  'CHECK OUT',
                  style: TextStyle(fontSize: fontSize),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.symmetric(
                    vertical: buttonSize / 2,
                    horizontal: buttonSize * 4.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(buttonSize * 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemCard(
      String title,
      String color,
      String size,
      int price,
      String imageUrl,
      int quantity,
      Function() onIncrement,
      Function() onDecrement,
      double fontSize,
      double buttonSize,
      ) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(imageUrl),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Color:',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: fontSize,
                        ),
                      ),
                      Text(
                        ' $color',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize,
                        ),
                      ),
                      Text(
                        '      Size:',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: fontSize,
                        ),
                      ),
                      Text(
                        size,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: onIncrement,
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 3,
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          minimumSize: Size(buttonSize, buttonSize),
                        ),
                      ),
                      Text(
                        ' $quantity  ',
                        style: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: onDecrement,
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          minimumSize: Size(buttonSize, buttonSize),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
