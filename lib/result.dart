import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  String coin;

  Result(this.coin);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      body: Column(
        spacing: 32,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("images/moeda_${widget.coin}.png"),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("images/botao_voltar.png"),
          ),
        ],
      ),
    );
  }
}
