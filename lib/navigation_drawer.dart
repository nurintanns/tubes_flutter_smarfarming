import 'package:flutter/material.dart';
import 'package:uts/lahan.dart';
import 'package:uts/about.dart';
import 'package:uts/prediksi.dart';
import 'package:uts/home.dart';
import 'navigation_drawer.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3474/3474044.png',
                  )),
            ),
          )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            // onTap: () => {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => const MyHomePage()))
            // },
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Lahan'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LahanPage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text('Prediksi Kebutuhan Pupuk'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrediksiPage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("About"),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutPage()))
            },
          ),
        ],
      ),
    );
  }
}
