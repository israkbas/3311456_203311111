import 'package:flutter/material.dart';

class Yapilacak extends StatefulWidget {
  const Yapilacak({super.key});

  @override
  State<Yapilacak> createState() => _YapilacakState();
}

class _YapilacakState extends State<Yapilacak> {
  TextEditingController yapilacakController = TextEditingController();
  List<Map<String, dynamic>> toDoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButtonWidget(context),
      appBar: AppBar(backgroundColor: Colors.brown),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'lib/assets/Wat happens when u are finished with homework.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView.builder(
                itemCount: toDoList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.only(right: 5.0, left: 5.0, bottom: 0.2),
                    padding: EdgeInsets.only(
                        right: 8.0, left: 15.0, bottom: 8.0, top: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color.fromARGB(91, 243, 240, 239),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              toDoList[index]["checked"] =
                                  !toDoList[index]["checked"];
                            });
                          },
                          icon: Icon(
                              toDoList[index]["checked"]
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              key: Key('completed-icon-$index')),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              toDoList[index]["title"],
                              style: TextStyle(
                                decoration: toDoList[index]["checked"]
                                    ? TextDecoration.lineThrough
                                    : null,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              toDoList.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton floatingActionButtonWidget(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        yapilacakController.clear();
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: TextFormField(
              controller: yapilacakController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown),
                ),
                labelText: "",
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    if (yapilacakController.text.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("UYARI"),
                          content: Text('Boş Geçilemez!'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "GERİ",
                                  style: TextStyle(color: Colors.brown),
                                ))
                          ],
                        ),
                      );
                    } else {
                      setState(() {
                        toDoList.add({
                          "title": yapilacakController.text,
                          "checked": false
                        });
                        Navigator.pop(context);
                      });
                    }
                  },
                  child: Text(
                    "EKLE",
                    style: TextStyle(color: Colors.brown),
                  ))
            ],
          ),
        );
      },
      tooltip: 'Ekle',
      backgroundColor: Colors.brown,
      child: const Icon(Icons.add),
    );
  }
}
