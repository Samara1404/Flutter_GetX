import 'package:flutter/material.dart';

import 'counter_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

