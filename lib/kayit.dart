import 'package:flutter/material.dart';

class kayitOl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/indir (7).jpg'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Ad Soyad",
                      hintStyle: TextStyle(letterSpacing: 0.5, fontSize: 17),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Mail",
                      hintStyle: TextStyle(letterSpacing: 0.5, fontSize: 17),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Telefon(İsteğe Bağlı)",
                      hintStyle: TextStyle(letterSpacing: 0.5, fontSize: 17),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Doğum Tarihi   (gg/aa/yyyy)",
                      hintStyle: TextStyle(letterSpacing: 0.5, fontSize: 17),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Şifre",
                      hintStyle: TextStyle(letterSpacing: 0.5, fontSize: 17),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "KAYIT OL",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.6),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
