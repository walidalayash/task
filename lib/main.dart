import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
 
      ),
      home: const ActivityPage(),
    );
  }
}
//  git init
//  git add .
//  git commit -m "new"
//  git remote add origin https://github.com/walidalayash/dev
//  git push -u origin master