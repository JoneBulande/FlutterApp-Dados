// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numeroDadoEsquerdo = 1;
  int numeroDadoDireita = 2;

  void randomDadoos() {
    setState(() {
      numeroDadoDireita = Random().nextInt(6) + 1;
      numeroDadoEsquerdo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 6, 8),
                  child:
                      Image.asset('assets/imagens/dado$numeroDadoEsquerdo.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6, 8, 10, 8),
                  child:
                      Image.asset('assets/imagens/dado$numeroDadoDireita.png'),
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                backgroundColor: Colors.teal.shade900,
              ),
              onPressed: () {
                randomDadoos();
              },
              child: Text('Jogar', style: TextStyle(fontSize: 30.0))),
        ],
      ),
    );
  }
}
