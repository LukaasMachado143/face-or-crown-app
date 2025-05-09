import 'package:face_or_crown/result.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _play() {
    final List<String> _options = ['cara', 'coroa'];
    final _index = Random().nextInt(2);

    String coin = _options[_index];

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Result(coin)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("images/logo.png"),
          GestureDetector(
            onTap: _play,
            child: Image.asset("images/botao_jogar.png"),
          ),
        ],
      ),
    );
  }
}
