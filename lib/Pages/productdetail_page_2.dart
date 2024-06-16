import 'package:flutter/material.dart';
import 'products_page.dart';
import 'cart_page.dart';



class ProductDetailPage2 extends StatefulWidget {
 @override
 _ProductDetailPage2 createState() => _ProductDetailPage2();
}

class _ProductDetailPage2 extends State<ProductDetailPage2> {
 int _productCount = 0;

 void _incrementProductCount() {
  setState(() {
   _productCount++;
  });
 }

 void _decrementProductCount() {
  setState(() {
   if (_productCount > 0) _productCount--;
  });
 }

 @override
 Widget build(BuildContext context) {
  return MaterialApp(
   title: 'Flutter Demo',
   home: Scaffold(
    backgroundColor: Colors.orangeAccent,
    appBar: AppBar(
     leading: IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back),
      onPressed: () {
       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductsPage()),
       );
      },
     ),
     title: Text(
      'SamaanGhar.pk',
      textAlign: TextAlign.center,
      style: TextStyle(
       color: Colors.black,
       fontWeight: FontWeight.bold,
      ),
     ),
     centerTitle: true,
     backgroundColor: Colors.orange,
     actions: <Widget>[
      IconButton(
       icon: Icon(Icons.shopping_cart),
       color: Colors.black,
       onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder:(context) => CartPage()));
       },
      ),
     ],
    ),
    body: Column(
     children: [
      Image(
          image: AssetImage('assets/images/keyboard.png'),
          width: 250, height: 250
      ),
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
        IconButton(
         icon: Icon(Icons.remove),
         onPressed: _decrementProductCount,
        ),
        Text('$_productCount'),
        IconButton(
         icon: Icon(Icons.add),
         onPressed: _incrementProductCount,
        ),
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
      SizedBox(height: 10),
      SizedBox(height: 10),
      Text(
          'Gaming Keyboard',
          style: TextStyle(fontWeight: FontWeight.bold)
      ),
      RatingBox(),
      ReviewBox(reviews:[
       {'name': 'Shahzaib Akram', 'review': 'very nice tacticle feel'},
       {'name': 'Haris Khan', 'review': 'batti wala keyboard'}
      ]),
     ],
    ),
   ),
  );
 }
}

class RatingBox extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
       Icon(Icons.star, color: Colors.orange),
       Icon(Icons.star, color: Colors.orange),
       Icon(Icons.star, color: Colors.orange),
       Icon(Icons.star, color: Colors.orange),
       Icon(Icons.star_border_outlined, color: Colors.orange)
      ]
  );
 }
}

class ReviewBox extends StatelessWidget {
 final List<Map<String, String>> reviews;
 ReviewBox({required this.reviews});

 @override
 Widget build(BuildContext context) {
  return Column(
      children:[
       Text('Reviews', style:
       TextStyle(fontWeight:
       FontWeight.bold)),
       for (var review in reviews)
        InkWell(
            onTap: () {
             // Perform review click action
            },
            child: Padding(
                padding:
                EdgeInsets.all(8.0),
                child:
                Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children:[
                     Text(review['name']!,
                         style:
                         TextStyle(fontWeight:
                         FontWeight.bold)),
                     SizedBox(height:
                     4),
                     Text(review['review']!),
                    ]
                )
            )
        )
      ]
  );
 }
}
