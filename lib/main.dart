import 'package:flutter/material.dart';
import 'package:peak_sneakers/models/cart.dart';
import 'package:peak_sneakers/pages/intro_pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder:(context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Peak Sneakers',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: IntroPage(),
        );
      },
    );
  }
}
