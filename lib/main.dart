import 'package:destintaion/chicken.dart';
import 'package:destintaion/chuchvara.dart';
import 'package:destintaion/manti.dart';
import 'package:destintaion/palov.dart';
import 'package:destintaion/shorva.dart';
import 'package:destintaion/somsa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? val;
  Widget task = Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Center(child: Text('Retsept')),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                  title: Text('Somsa'),
                  value: 1,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      val = v!;
                    });
                    setState(() {
                      task = Mysomsa();
                    });
                  }),
              RadioListTile(
                  title: Text('Palov'),
                  value: 2,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      val = v!;
                    });
                    setState(() {
                      task = Mypalov();
                    });
                  }),
              RadioListTile(
                  title: Text('Manti'),
                  value: 3,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      val = v!;
                    });
                    setState(() {
                      task = Mymanti();
                    });
                  }),
              RadioListTile(
                  title: Text('Chuchvara'),
                  value: 4,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      val = v!;
                    });
                    setState(() {
                      task = Mychuchvara();
                    });
                  }),
              RadioListTile(
                  title: Text('Sho\'rva'),
                  value: 5,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      val = v!;
                    });
                    setState(() {
                      task = Myshorva();
                    });
                  }),
              RadioListTile(
                title: Text('Chicken'),
                  value: 6,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      val = v!;
                    });
                    setState(() {
                      task=Mychicken();
                    });
                  })
            ],
          ),
          Container(
            height: 430.6,
            width: 500,
            color: Colors.white,
            child: task,
          )
        ],
      ),
    );
  }
}
