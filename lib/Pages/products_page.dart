import 'package:flutter/material.dart';
import 'login_page.dart';
import 'productdetail_page_1.dart';
import 'productdetail_page_2.dart';
import 'cart_page.dart';

class ProductsPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> _validProductNames = ['speaker', 'Speaker', 'Bluetooth' , 'bluetooth', 'bluetooth speaker', 'Bluetooth Speaker', 'gaming', 'Gaming', 'keyboard', 'Keyboard', 'gaming keyboard', 'Gaming Keyboard'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.power_settings_new),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder:(context) => LoginPage()));
            },
          ),
          centerTitle: true,
          title: Text(
            'SamaanGhar.pk',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orange,
          actions: <Widget>[
            IconButton(
              icon:const Icon(Icons.shopping_cart),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context) => CartPage()));
              },
            ),
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Perform notification action
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      border:const OutlineInputBorder(),
                      labelText: 'Search',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            switch (_searchController.text) {
                              case 'speaker':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage1()),
                                );
                                break;
                              case 'Speaker':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage1()),
                                );
                                break;
                              case 'bluetooth':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage1()),
                                );
                                break;
                              case 'Bluetooth':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage1()),
                                );
                                break;
                              case 'bluetooth speaker':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage1()),
                                );
                                break;
                              case 'Bluetooth Speaker':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage1()),
                                );
                                break;
                              case 'gaming keyboard':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage2()),
                                );
                                break;
                              case 'Gaming Keyboard':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage2()),
                                );
                                break;
                              case 'keyboard':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage2()),
                                );
                                break;
                              case 'Keyboard':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage2()),
                                );
                                break;
                              case 'gaming':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage2()),
                                );
                                break;
                              case 'Gaming':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductDetailPage2()),
                                );
                                break;
                            }
                          }
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a product name';
                      }
                      else if (value == null || value.isEmpty) {
                        return 'Please enter a product name';
                      } else if (!_validProductNames.contains(value)) {
                        return 'Invalid product name';
                      }
                      return null;
                    },


                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('clicked');
                },
                child: Image(
                  image: AssetImage('assets/images/banner.png'),
                  width: 500,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.category),
                    onPressed: () {
                      // Perform category 1 action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.phone_android),
                    onPressed: () {
                      // Perform category 2 action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.house),
                    onPressed: () {
                      // Perform category 3 action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.gamepad),
                    onPressed: () {
                      // Perform category 4 action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.auto_stories),
                    onPressed: () {
                      // Perform category 5 action
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'New Arrival',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductDetailPage1()),
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/images/speaker.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Text('Bluetooh Speaker'),
                      Text('\$50'),
                      Column(
                          children:[
                            Text('Price: \$50'),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed:()
                              {
                                Navigator.push(context,MaterialPageRoute(builder:(context) => CartPage()));
                              },
                              style:ElevatedButton.styleFrom(primary:Colors.orange),
                              child: Text('Add to cart'),
                            ),
                          ]
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductDetailPage2()),
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/images/keyboard.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Text('Gaming Keyboard'),
                      Text('\$100'),
                      Column(
                          children:[
                            Text('Price: \$100'),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed:()
                              {
                                Navigator.push(context,MaterialPageRoute(builder:(context) => CartPage()));
                              },
                              style:ElevatedButton.styleFrom(primary:Colors.orange),
                              child: Text('Add to cart'),
                            ),
                          ]
                      )
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // Perform share action
                },
              ),
              IconButton(
                icon: Icon(Icons.account_balance_wallet),
                onPressed: () {
                  // Perform wallet action
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  // Perform favorite action
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {
                  // Perform chat action
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}


