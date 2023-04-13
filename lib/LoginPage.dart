import 'package:ajanda/homepage.dart';
import 'package:ajanda/kayit.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
            key: _formKey,
            child: Center(
                child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/hii.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFFEFEBE9)),
                          ),
                          labelText: 'Kullanıcı Adı',
                          labelStyle: TextStyle(
                            color: Colors.brown,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Kullanıcı Adınızı Giriniz !";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          username = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 20.0, top: 15.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFFEFEBE9)),
                          ),
                          labelText: 'Şifre',
                          labelStyle: TextStyle(color: Colors.brown),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Şifrenizi Giriniz !";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          password = value!;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MaterialButton(
                          child: Text("Kayıt Ol ",
                              style: TextStyle(
                                  color: Color(0XFFEFEBE9), fontSize: 15)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => kayitOl()));
                          },
                        ),
                      ],
                    ),
                    _loginButton()
                  ],
                ),
              ],
            ))),
      ),
    );
  }

  Widget _loginButton() => ElevatedButton(
      child: Text("GİRİŞ YAP"),
      style: ElevatedButton.styleFrom(
        foregroundColor: Color(0XFFEFEBE9),
        backgroundColor: Colors.brown,
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => home(),
              ));
        }
      });
}
