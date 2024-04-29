import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shibili/listview/list.dart';
import 'package:shibili/listview/listview_supperete.dart';
import 'package:shibili/listview/listviewbuilder.dart';
import 'package:shibili/screens/check.dart';
import 'package:shibili/screens/homepagr.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenOne(),
    );
  }
}

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  child: Text("shibili"),
                  color: Colors.red,
                  height: 200,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.blue,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
