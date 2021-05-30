import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.blue.shade900,
              title: new Text("Facebook Application"),
            ),
            body: Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
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
                      margin: EdgeInsets.only(top: 0),
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              //labelText: "Mobile number or E-Mail Address",
                              hintText: "Mobile number or email address",
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 10)))),
                  Container(
                      margin: EdgeInsets.only(top: 0),
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              //labelText: "Password",
                              hintText: "Enter your Password",
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 15)))),
                  Container(
                    height: 40,
                    width: 320,
                    alignment: Alignment.center,
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue.shade700,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "Forgotten Password? ",
                      style: TextStyle(
                        color: Colors.blue.shade700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.center,
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green.shade700,
                    ),
                  ),
                ],
              ),
            )));
  }
}
