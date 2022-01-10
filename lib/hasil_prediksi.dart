import 'package:flutter/material.dart';
import 'package:uts/prediksi.dart';
import 'package:uts/navigation_drawer.dart';

class HasilPrediksiPage extends StatefulWidget {
  @override
  _HasilPrediksiPageState createState() => _HasilPrediksiPageState();
}

class _HasilPrediksiPageState extends State<HasilPrediksiPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(
          "Hasil Prediksi",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Text("Estimasi Kebutuhan Unsur Hara N adalah 0 kg/Ha/Thn"),
          Text("Estimasi Kebutuhan Unsur Hara P adalah 0 kg/Ha/Thn"),
          Text("Estimasi Kebutuhan Unsur Hara K adalah 0 kg/Ha/Thn"),
          Text("Estimasi Kebutuhan Unsur Hara Mg adalah 0 kg/Ha/Thn"),
        ],
      ),
    );
  }
}
