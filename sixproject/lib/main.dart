import 'package:flutter/material.dart';
import 'pg/homeScreen.dart';
import 'pg/cadastro.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sixproject/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'pg/logado.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (_) => HomeScreen(),
      '/cadastro': (_) => Cadastro(),
      '/logado': (_) => Logado(),
    },
  ));
}
