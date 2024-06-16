import 'package:flutter/material.dart';
import 'products_page.dart';
import 'package:email_validator/email_validator.dart';

class ShippingAddressPage extends StatefulWidget {
  @override
  _ShippingAddressPageState createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) => ProductsPage()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Shipping Address',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a phone number';
                    }
                    if (value.length != 11 || !value.contains(RegExp(r'^\d+$'))) {
                      return 'Phone number must be 11 digits';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    if (!value.contains('gmail.com') && !value.contains('yahoo.com') && !value.contains('hotmail.com') && !value.contains('outlook.com') && !value.contains('nu.edu.pk')){
                      return 'Please enter a valid email';
                    }
                    if (!EmailValidator.validate(value)){
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment:
                Alignment.center,
                padding:
                EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:
                TextFormField(
                  controller:
                  cityController,
                  decoration:
                  InputDecoration(border:
                  OutlineInputBorder(), labelText:
                  'Address'),
                  validator:
                      (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a address+r';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment:
                Alignment.center,
                padding:
                EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:
                TextFormField(
                  controller:
                  postalCodeController,
                  decoration:
                  InputDecoration(border:
                  OutlineInputBorder(), labelText:
                  'Postal Code'),
                  validator:
                      (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a postal code';
                    }
                    if (value.length != 5 || !value.contains(RegExp(r'^\d+$'))) {
                      return 'Please enter a valid postal code';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    textStyle: const TextStyle(
                        color: Colors.black),
                  ),
                  child: Text('Confirm Address',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                      Navigator.push(context,MaterialPageRoute(builder:(context) => ProductsPage()));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
