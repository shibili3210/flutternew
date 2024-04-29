import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Listviewsupreate extends StatelessWidget {
  Listviewsupreate({super.key});

  List<String> names = [
    'user1',
    'user2',
    'user3',
    'user4',
    'user5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  Text(names[index])
                ],
              );
            },
            itemCount: names.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 50,
              );
            },
          )
        ],
      ),
    ));
  }
}
