import 'package:flutter/material.dart';

class Odev5 extends StatefulWidget {
  final String adSoyad;
  final String cinsiyet;
  bool resitMi;
  String icilenSigara;

  Odev5(
      {required this.adSoyad,
        required this.cinsiyet,
        required this.resitMi,
        required this.icilenSigara});

  @override
  State<Odev5> createState() => _Odev5State();
}

class _Odev5State extends State<Odev5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GELEN DEĞERLER"),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.red,
              child: Text(
                "Ad Soyad: ${widget.adSoyad}",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.deepOrange,
              child: Text(
                "Cinsiyet: ${(widget.cinsiyet)}",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.deepPurpleAccent,
              child: Text(
                "Reşit mi: ${widget.resitMi ? "Evet" : "Hayır"}",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.green,
              child: Text(
                "Günde içilen sigara: ${widget.icilenSigara}",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
