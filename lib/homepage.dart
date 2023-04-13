import 'package:ajanda/home/izlenecek.dart';
import 'package:ajanda/notlar/notlar.dart';
import 'package:ajanda/home/okunacak.dart';
import 'package:ajanda/home/yap%C4%B1lacak.dart';
import 'package:ajanda/takvim.dart';
import 'package:flutter/material.dart';
import 'home/dinlenecek.dart';

class home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/kareli.jpg'), fit: BoxFit.cover),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => izle()));
                      },
                      child: Text(" İzlenecek ", style: TextStyle(fontSize: 7)),
                      backgroundColor: Color(0xFF4E342E),
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                  width: 150.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dinlenecek()));
                      },
                      child: Text(" Dinlenecek ",
                          style: TextStyle(fontSize: 7, color: Colors.brown)),
                      backgroundColor: Color(0xFFD7CCC8),
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                  width: 150.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Oku()));
                      },
                      child: Text(" Okunacak ", style: TextStyle(fontSize: 7)),
                      backgroundColor: Color(0xFF795548),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Yapilacak()));
                      },
                      child: Text(" Yapılacak ",
                          style: TextStyle(
                            fontSize: 7,
                          )),
                      backgroundColor: Color(0xFFA1887F),
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                  width: 150.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Not(),
                            ));
                      },
                      child: Text(" Notlar ", style: TextStyle(fontSize: 7)),
                      backgroundColor: Color(0xFF5D4037),
                      hoverColor: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                  width: 150.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => takvim()));
                      },
                      child: Text(" TAKVİM ", style: TextStyle(fontSize: 7)),
                      backgroundColor: Color(0xFFBCAAA4),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    )));
  }
}
