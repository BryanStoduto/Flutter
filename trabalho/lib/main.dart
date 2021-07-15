import 'dart:math';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false, //desativando o banner
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

  class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Steam"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(width: 3,color: Colors.white)
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Image.asset("images/logo1.png"),
            TextField(
              decoration: InputDecoration(labelText:"Digite seu E-mail"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              decoration: InputDecoration(labelText:"Digite sua Senha"),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),

            RaisedButton(
              child: Text("Logar Conta"),
              color: Colors.white10,
              onPressed: (){
                print("Conta Logada");
              },
            )
          ],
        ),
      ),
    );


  }
}