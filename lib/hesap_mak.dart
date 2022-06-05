import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HesapMakinesi extends StatefulWidget {
  @override
  _HesapMakinesiState createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  var sayi1 = 0, sayi2 = 0, sonuc = 0;
  void topla() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }



  void temizle() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sonuc = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
        centerTitle: true,
        backgroundColor: Colors.white10,
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Sonuç: $sonuc",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,

              decoration: InputDecoration(hintText: t1.text, hintStyle: TextStyle(color: Colors.white),),
              controller: t1,
            ),
            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: t2.text, hintStyle: TextStyle(color: Colors.white),),
              controller: t2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: Icon(FontAwesomeIcons.plus, color: Colors.white,),
                  onPressed: topla,
                  color: Colors.orangeAccent,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[


              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                  child: Text(
                    "Temizle",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: temizle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}