import 'package:flutter/material.dart';
import 'package:shan.pk/Pages/login_page.dart';
import 'package:email_validator/email_validator.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'SamaanGhar.pk',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                height: 200,
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child:
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'User Name'),
                  validator:  (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
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
                  phoneController,
                  decoration:
                  InputDecoration(border:
                  OutlineInputBorder(), labelText:
                  'Phone Number'),
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
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 8){
                      return 'Password should be 8 characters long';
                    }
                    if (!value.contains('1') && !value.contains('2') && !value.contains('3') && !value.contains('4') && !value.contains('5') && !value.contains('6') && !value.contains('7') && !value.contains('8') && !value.contains('9')){
                      return 'Password must contain a digit';
                    }
                    if (!value.contains('a') && !value.contains('b') && !value.contains('c') && !value.contains('d') && !value.contains('e') && !value.contains('f') && !value.contains('g') && !value.contains('h') && !value.contains('i') && !value.contains('j') && !value.contains('k') && !value.contains('l') && !value.contains('m') && !value.contains('n') && !value.contains('o') && !value.contains('p') && !value.contains('q') && !value.contains('r') && !value.contains('s') && !value.contains('t') && !value.contains('u') && !value.contains('v') && !value.contains('w') && !value.contains('x') && !value.contains('y') && !value.contains('z')){
                      return 'Password must contain a letter';
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
                  style:ElevatedButton.styleFrom(primary:Colors.orange),
                  child:Text('Sign Up', style:TextStyle(color:Colors.black87)),
                  onPressed:() {
                    if (_formKey.currentState != null && _formKey.currentState!.validate()) 
                   Navigator.push(context,MaterialPageRoute(builder:(context) => LoginPage()));
                    
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  child: Text(
                    'Do you have already have account ? Login',
                    style: TextStyle(color: Colors.black87),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );

                    print("SIGNUP");
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
