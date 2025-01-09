import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      backgroundColor: Color(0xFFBDF5F2),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Hi-Kod",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 40,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("İnsan iconuna tıklandı");
            },
            icon: Icon(
              Icons.person,
              size: 40,
              color: Color(0xFFBDF5F2),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.6,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65.0),
                  color: Colors.indigo),
              child: Text(
                textAlign: TextAlign.center,
                "Hello World",
                style: TextStyle(
                  color: Color(0xFFBDF5F2),
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
