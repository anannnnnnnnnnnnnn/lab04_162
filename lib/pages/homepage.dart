import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String foodRadio = "";
  bool stareeg = false;
  bool Mincedporkdumplings = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Widget"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            radioMenulist("ข้าวผัดไดโนเสาร์", "ธรรมดา 550 บาท"),
            radioMenulist("ข้าวราดกระเพรา", "ธรรมดา 550 บาท"),
            radioMenulist("ข้าวมันจระเข้", "ธรรมดา 550 บาท"),
            radioMenulist("ต้มยำปลาดุ", "ธรรมดา 550 บาท"),
            radioMenulist("ข้าวยำ", "ธรรมดา 550 บาท"),
            Divider(),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Text("+5"),
                title: Text("ไข่ดาว"),
                value: stareeg,
                onChanged: (value) {
                  setState(() {
                    stareeg = value!;
                  });
                })
          ],
        )));
  }

  RadioListTile<String> radioMenulist(String title, String subtitle) {
    return RadioListTile(
        activeColor: Colors.amber,
        title: Text(title),
        value: title,
        subtitle: Text(subtitle),
        groupValue: foodRadio,
        onChanged: (value) {
          setState(() {
            foodRadio = value!;
          });
          print(foodRadio);
        });
  }
}
