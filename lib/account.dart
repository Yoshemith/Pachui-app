import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  //const Home({Key? key}) : super(key: k//ey);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('Cuenta de usuario'),
      ),
    );
  }
}
