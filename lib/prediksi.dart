import 'package:flutter/material.dart';
import 'package:uts/hasil_prediksi.dart';
import 'package:uts/navigation_drawer.dart';
import 'package:dropdownfield/dropdownfield.dart';

class PrediksiPage extends StatefulWidget {
  const PrediksiPage({Key? key}) : super(key: key);

  @override
  _PrediksiPageState createState() => _PrediksiPageState();
}

class _PrediksiPageState extends State<PrediksiPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text(
            "Prediksi Kebutuhan Pupuk",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey),
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Center(
                    child: Text(
                      'Prediksi Kebutuhan Pupuk',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 24,
                      ),
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              DropDownField(
                controller: blokSelected,
                hintText: "Pilih Blok",
                enabled: true,
                itemsVisibleInDropdown: 5,
                items: blok,
                onValueChanged: (value) {
                  setState(() {
                    selectBlok = value;
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: "Kadar Air",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                minWidth: 85.0,
                height: 50.0,
                color: Colors.green,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HasilPrediksiPage();
                  }));
                },
                child: Text('Prediksi',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              )
            ],
          ),
        ));
  }
}

String selectBlok = "";

final blokSelected = TextEditingController();

List<String> blok = ["BLOK A", "BLOK B", "BLOK C", "BLOK D"];
