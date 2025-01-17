import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/odev5.dart';

List<String> list = <String>["Erkek", "Kadın"];

class Odev4 extends StatefulWidget {
  const Odev4({super.key});

  @override
  State<Odev4> createState() => _Odev4State();
}

class _Odev4State extends State<Odev4> {
  TextEditingController txt = TextEditingController();
  bool isaretliMi = false;
  bool checkliMi = false;
  int sliderdeger = 0;
  String? cinsiyet;
/*
  void _showValueDialog(String textFieldValue, int sliderValue) {
    // Dialog'ı gösterme
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Aldığınız Değerler'),
          content: Text(
              'Adınız Soyadınız: $textFieldValue\nCinsiyet: $cinsiyet\nReşit Misiniz: ${isaretliMi ? "Evet" : "Hayır"}\nİçilen Sigara: $sliderValue'),
          actions: [
            TextButton(
              onPressed: () {
                // Dialog'u kapatma
                Navigator.of(context).pop();
              },
              child: Text('Tamam'),
            ),
          ],
        );
      },
    );
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Kişilik Anketi",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                //Row ile sarmaladık çünkü başlangıctan başlatmak için
                //column içinde olduğu için containera izin vermedi
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 500,
                      child: TextField(
                        controller: txt,
                        decoration: InputDecoration(
                          label: Text("Adınız ve Soyadınız"),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey,
                      ),
                      width: 500,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: cinsiyet, // Seçilen cinsiyet
                        hint: Text(
                            'Cinsiyet Seçin'), // Kullanıcıya net bir bilgi verme
                        onChanged: (String? _val) {
                          setState(() {
                            cinsiyet = _val; // Seçilen değeri güncelle
                          });
                        },
                        items: <DropdownMenuItem<String>>[
                          DropdownMenuItem(
                              child: Text("Erkek"), value: 'Erkek'),
                          DropdownMenuItem(
                              child: Text("Kadın"), value: 'Kadın'),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: CheckboxListTile(
                    checkColor: Colors.amber,
                    activeColor: Colors.deepOrange,
                    //tileColor: Colors.grey,
                    title: Text("Reşit misiniz?"),
                    value: isaretliMi,
                    onChanged: (_val) {
                      setState(() {
                        isaretliMi = _val!;
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: SwitchListTile(
                    title: Text("Sigara kullanıyor musunuz?"),
                    //tileColor: Colors.grey,
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.red.shade900,
                    activeColor: Colors.black,
                    inactiveThumbColor: Colors.black,
                    value: checkliMi,
                    onChanged: (_val) {
                      setState(() {
                        checkliMi = _val;
                      });
                    },
                  ),
                ),
                if (checkliMi) // Switch işaretli ise Slider'ı göster
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Günde kaç tane sigara kullanıyorsunuz?",
                        style: TextStyle(fontSize: 20),
                      ),
                      Slider(
                        value: sliderdeger.toDouble(),
                        min: 0,
                        max: 20,
                        divisions: 19,
                        label: sliderdeger.toString(),
                        onChanged: (value) {
                          setState(() {
                            sliderdeger =
                                value.toInt(); // Slider değerini güncelle
                          });
                        },
                      ),
                    ],
                  ),
                SizedBox(
                  height: 50,
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      Route bilgiGonder = MaterialPageRoute(builder: (context) {
                        return Odev5(
                            adSoyad: txt.text,
                            cinsiyet: cinsiyet.toString(),
                            resitMi: isaretliMi,
                            icilenSigara: sliderdeger.toString());
                      });
                      Navigator.push(context, bilgiGonder);
                      // Butona tıklandığında değerleri al
                      //String textFieldValue = txt.text;
                      //_showValueDialog(textFieldValue, sliderdeger);
                    });
                  },
                  child: Text(
                    "Bilgileri gönder",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(500, 70),
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
