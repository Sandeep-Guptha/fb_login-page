//import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: "Facebook Application",
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Facebook Application"),
            backgroundColor: Colors.blue.shade700,
            //titleTextStyle: TextStyle(color: Colors.white),
          ),
          body: Forms(),
        ));
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _keys,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "facebook",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(4),
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Mobile number or email address",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty || value == null) {
                        return "Please enter the mobile number or email adress";
                      } else if (value != "sandeepguptha9@gmail.com") {
                        return "Please enter the correct  mobile number or email adress";
                      } else {}
                      return null;
                    },
                  )),
              Container(
                  margin: EdgeInsets.all(2),
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    cursorColor: Colors.red,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //labelText: "Password",
                      hintText: "Enter your Password",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    validator: (value) {
                      if (value.isEmpty || value == null) {
                        return "Please enter the Password";
                      } else if (value != "12345678") {
                        return "Please enter the correct Password";
                      } else {}
                      return null;
                    },
                  )),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  if (_keys.currentState.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Successfully Logged In")));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  } else
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Login Failed")));
                },
                color: Colors.blue.shade700,
                //Width: 320,
                splashColor: Colors.black45,
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9),
                alignment: Alignment.center,
                child: Text(
                  "or",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {},
                color: Colors.green,
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Welcome to Netflix",
            style: TextStyle(
                color: Colors.red.shade900, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 250),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              "Assets/netflix logo.jpg",
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
