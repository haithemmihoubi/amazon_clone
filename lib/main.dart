import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme:const AppBarTheme(
          elevation: 0,

        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text('Flutter'),
        ),
        body:const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

