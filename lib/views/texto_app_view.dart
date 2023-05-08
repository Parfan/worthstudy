import 'package:flutter/material.dart';

class TextoView extends StatelessWidget {
  const TextoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      
        child: const Center(
          child: Text(
            'Esse aplicativo foi desenvolvido pelos alunos Ciência da Computação da Pontifícia Universidade Católica de Minas Gerais (PUC-MG) para disciplina de Laboratório de Dispositivos Móveis. O objetivo do aplicativo é auxiliar os alunos a gerenciar o tempo de estudo e organizar tarefas cotidianas. O aplicativo foi desenvolvido utilizando a linguagem de programação Dart e o framework Flutter.',
            textAlign: TextAlign.center,
            style: 
            TextStyle(
              fontSize: 20,
              fontFamily: 'JosefinSans',
              color: Colors.black,
            ),
          ),
        ),
      );
  
  }
}
