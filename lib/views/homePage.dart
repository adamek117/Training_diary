import 'package:flutter/material.dart';
import 'package:trainining_diary/models/customContainer.dart';
import 'package:trainining_diary/views/initialPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MyCustomContainer(progress: 0.6, size: size),
          SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "HELLO, \nWELCOME BACK!",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                      height: 200,
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(2),
                      child: const Text("There will be your last training",
                          style: TextStyle(fontSize: 20)),
                    ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
