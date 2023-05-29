import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Logado extends StatefulWidget {
  const Logado({super.key});

  @override
  State<Logado> createState() => _LogadoState();
}

var retorno = '';

class _LogadoState extends State<Logado> {
  Future<void> validarLogado() async {
    var user = await FirebaseAuth.instance.currentUser;
    if (user != null) {
      retorno = 'Usuário logado é: ${user.email}';
    } else {
      retorno = 'Nenhum usuário logado';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página logada')),
      body: Column(children: [
        Text('Logado'),
        Text(retorno),
      ]),
    );
  }
}
