import 'package:flutter/material.dart';
import 'package:shibili/app.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) {
              //     return sCREE();
              //   },
              // ));
            },
            icon: Icon(Icons.abc)),
      ),
    );
  }
}
