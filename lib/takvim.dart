import 'package:flutter/material.dart';

class takvim extends StatefulWidget {
  const takvim({Key? key}) : super(key: key);

  @override
  State<takvim> createState() => _takvimState();
}

DateTime _dateTime = DateTime.now();

class _takvimState extends State<takvim> {
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2030),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.brown),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/Wallpapers and Aesthetic Stuff.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                    child: TextButton(
                  child: Text(
                    _dateTime.toString(),
                    style: TextStyle(fontSize: 48),
                  ),
                  onPressed: _showDatePicker,
                )),
              ),
            ],
          ),
        ));
  }
}
