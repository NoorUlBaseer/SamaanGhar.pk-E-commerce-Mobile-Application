import 'package:flutter/material.dart';
import 'shipping_page.dart';
import 'products_page.dart';

/*class CartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart',
      home: CartPage(),
    );
  }
}*/

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalAmount = 150.0; // Example total amount
  int product1Quantity = 1;
  int product2Quantity = 1;

  void updateTotalAmount() {
    setState(() {
      totalAmount = (product1Quantity * 50.0) + (product2Quantity * 100.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () =>Navigator.push(context,MaterialPageRoute(builder: (context) => ProductsPage())),
                ),
              ],
            ),
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            // Product 1
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/images/speaker.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bluetooth Speaker',
                style:
                TextStyle(color:
                    Colors.black,
                    fontWeight:
                    FontWeight.bold,
                    fontSize: 19)),
                    Text('\$50.0',
                        style:
                        TextStyle(color:
                        Colors.black,
                            fontWeight:
                            FontWeight.bold,
                            fontSize: 19)),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (product1Quantity > 1) product1Quantity--;
                            });
                            updateTotalAmount();
                          },
                        ),
                        Text('$product1Quantity'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              product1Quantity++;
                            });
                            updateTotalAmount();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // Product 2
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/images/keyboard.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gaming Keyboard',
                        style:
                        TextStyle(color:
                        Colors.black,
                            fontWeight:
                            FontWeight.bold,
                            fontSize: 19)),
                    Text('\$100.0',
                        style:
                        TextStyle(color:
                        Colors.black,
                            fontWeight:
                            FontWeight.bold,
                            fontSize: 19)),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (product2Quantity > 1) product2Quantity--;
                            });
                            updateTotalAmount();
                          },
                        ),
                        Text('$product2Quantity'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              product2Quantity++;
                            });
                            updateTotalAmount();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              //alignment: Alignment.center,
              height:
              MediaQuery.of(context).size.height / 3.5,
              width:
              MediaQuery.of(context).size.width,
              decoration:
              BoxDecoration(color:
              Colors.white,
                  borderRadius:
                  BorderRadius.circular(40)),
              child:
              Column(children:
              [
                SizedBox(height: 30),
                Text('Total',
                    textAlign: TextAlign.left,
                    style:
                    TextStyle(fontWeight:
                    FontWeight.bold,
                    fontSize: 25)),
                Text('\$$totalAmount',
                    style:
                    TextStyle(fontWeight:
                    FontWeight.bold,
                    fontSize: 25)),
                SizedBox(height: 40),
                ElevatedButton(style:
                ElevatedButton.styleFrom(primary:
                Colors.orange,
                    padding:
                    EdgeInsets.symmetric(horizontal:
                    50,
                        vertical:
                        20)),
                    onPressed:
                        () =>Navigator.push(context,MaterialPageRoute(builder:(context) => ShippingAddressPage())),

                    child:
                    Text('Enter Shipping Address',
                        style:
                        TextStyle(color:
                        Colors.black,
                            fontWeight:
                            FontWeight.bold,
                            fontSize: 20))),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
