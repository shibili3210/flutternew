import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 400,
                color: Colors.red,
              );
            },
            itemCount: 20,
          )
        ],
      ),
    ));
  }
}
