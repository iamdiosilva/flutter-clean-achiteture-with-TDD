import 'package:clean_architeture/layers/presenter/ui/views/car_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarPage(),
    );
  }
}
