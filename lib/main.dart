import 'package:flutter/material.dart';
import 'package:quran_applcation/constant.dart';
import 'package:quran_applcation/index.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding
        .instance
        .addPostFrameCallback(

            (_) async{
          await readJson();
          await getSettings();
        }



    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quran App',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const IndexPage(),
    );
  }
}