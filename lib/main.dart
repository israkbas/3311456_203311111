import 'package:ajanda/LoginPage.dart';
import 'package:ajanda/kapak.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name:'planner',
    options: const FirebaseOptions(
        apiKey: "AIzaSyCbciQ8zrVqOozJUC5mPJLlqPRq0V5O2Ao",
        authDomain: "planner-e1df8.firebaseapp.com",
        projectId: "planner-e1df8",
        storageBucket: "planner-e1df8.appspot.com",
        messagingSenderId: "442549891518",
        appId: "1:442549891518:web:3dee9f532ab54cf1e749ef"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: kapak(),
    );
  }
}
