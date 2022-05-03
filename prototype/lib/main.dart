import 'package:flutter/material.dart';
import 'package:prototype/panier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Panier'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void onpressed() {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Panier()),
  );

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Center(
        child: TextButton(
          onPressed: onpressed,
          child: const Text("Mon panier"),
          ),
    ),
    );
  }
}
