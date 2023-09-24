
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping App',
//       home: ProductList(),
//     );
//   }
// }
//
// class ProductList extends StatefulWidget {
//   @override
//   _ProductListState createState() => _ProductListState();
// }
//
// class _ProductListState extends State<ProductList> {
//   List<Product> products = [
//     Product(name: "Product A", price: 10),
//     Product(name: "Product B", price: 15),
//     Product(name: "Product C", price: 20),
//   ];
//
//   List<Product> selectedProducts = [];
//
//   void addToCart(int index) {
//     setState(() {
//       products[index].quantity++;
//       if (products[index].quantity == 5) {
//         showCongratsDialog(products[index]);
//       }
//       selectedProducts.add(products[index]);
//     });
//   }
//
//   void showCongratsDialog(Product product) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Congratulations!'),
//           content: Text('You\'ve bought 5 ${product.name}!'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void goToCartPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => CartPage(selectedProducts: selectedProducts),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('Product List')),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].name),
//             subtitle: Text('Price: \$${products[index].price}'),
//             trailing: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Text('Count: ${products[index].quantity} '),
//                       ElevatedButton(
//                         onPressed: () => addToCart(index),
//                         child: Text('Buy Now'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: goToCartPage,
//         child: Icon(Icons.shopping_cart),
//       ),
//     );
//   }
// }
//
// class Product {
//   final String name;
//   final int price;
//   int quantity;
//
//   Product({required this.name, required this.price, this.quantity = 0});
// }
//
// class CartPage extends StatelessWidget {
//   final List<Product> selectedProducts;
//
//   CartPage({required this.selectedProducts});
//
//   @override
//   Widget build(BuildContext context) {
//     int selectedProductCount = selectedProducts.length;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('Cart')),
//       ),
//       body: Center(
//         child: Text('You have selected $selectedProductCount products.'),
//       ),
//     );
//   }
// }
//
//
//
//
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product(name: "Walton Monitor", price: 20000),
    Product(name: "HP Laptop", price: 15000),
    Product(name: "Iphone 15", price: 200000),
  ];

  List<Product> selectedProducts = [];

  void addToCart(int index) {
    setState(() {
      products[index].quantity++;
      if (products[index].quantity == 5) {
        showCongratsDialog(products[index]);
      }
      selectedProducts.add(products[index]);
    });
  }

  void showCongratsDialog(Product product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!'),
          content: Text('You\'ve bought 5 ${product.name}!'),
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

  void goToCartPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(selectedProducts: selectedProducts),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Product List')),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('Price: \$${products[index].price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('Count: ${products[index].quantity} '),
                      ElevatedButton(
                        onPressed: () => addToCart(index),
                        child: Text('Buy Now'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: goToCartPage,
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class Product {
  final String name;
  final int price;
  int quantity;

  Product({required this.name, required this.price, this.quantity = 0});
}

class CartPage extends StatelessWidget {
  final List<Product> selectedProducts;

  CartPage({required this.selectedProducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cart')),
      ),
      body: ListView.builder(
        itemCount: selectedProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(selectedProducts[index].name),
          );
        },
      ),
    );
  }
}
