import 'package:ajanda/izlenecek/dizi.dart';
import 'package:ajanda/izlenecek/film.dart';
import 'package:flutter/material.dart';

class izle extends StatefulWidget {
  const izle({Key? key}) : super(key: key);

  @override
  State<izle> createState() => _izleState();
}

class _izleState extends State<izle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(backgroundColor: Colors.brown),
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/izlenecek.jpg'),
                        fit: BoxFit.cover),
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dizi()));
                                },
                                backgroundColor: Color(0xFF4E342E),
                                child: const Text(" DİZİ ",
                                    style: TextStyle(fontSize: 7)),
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
                                          builder: (context) => Film()));
                                },
                                child: Text(" FİLM",
                                    style: TextStyle(
                                        fontSize: 7, color: Colors.brown)),
                                backgroundColor: Color(0xFFD7CCC8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ])
              ],
            )));
  }
}
