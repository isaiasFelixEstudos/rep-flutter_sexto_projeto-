import 'package:flutter/material.dart';
import 'pg/homeScreen.dart';
import 'pg/cadastro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (_) => HomeScreen(),
      '/cadastro': (_) => Cadastro(),
    },
  ));
}
