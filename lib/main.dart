import 'package:flutter/material.dart';
import 'package:mvvm_architecture/view/coinlist_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoinListScreen(),
    );
  }
}
