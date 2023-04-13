import 'package:ajanda/LoginPage.dart';
import 'package:flutter/material.dart';

class kapak extends StatefulWidget {
  @override
  _KapakState createState() => _KapakState();
}

class _KapakState extends State<kapak> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/assets/ajandakapak.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.brown,
                  iconSize: 40,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
