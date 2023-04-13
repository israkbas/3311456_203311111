import 'package:ajanda/notlar/note_editor.dart';
import 'package:ajanda/notlar/note_reader.dart';
import 'package:ajanda/notlar/notecard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Not extends StatefulWidget {
  const Not({Key? key}) : super(key: key);

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
  late List<Not> notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown),
      body: SafeArea(
        child: Center(
            child: Stack(children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/3.jpg'), fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Expanded(
                child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance
                      .collection("planner")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasData) {
                      return GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        children: snapshot.data!.docs
                            .map((note) => noteCard(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ReaderScreen(note)));
                                }, note))
                            .toList(),
                      );
                    }
                    return Text("Herhangi bir not bulunmuyor");
                  },
                ),
              ),
            ],
          ),
        ])),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.brown,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EditorScreen()));
        },
        label: Text("Not Ekle"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
