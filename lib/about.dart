import 'package:flutter/material.dart';
import 'package:uts/navigation_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(
          "About",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1434394354979-a235cd36269d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
              ),
              Positioned(
                bottom: -60.0,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: Center(child: Text('Alsha Nabilla Hernawan')),
            subtitle: Center(child: Text('1202184327')),
          ),
          ListTile(
            title: Text('About Me'),
            subtitle: Text(
                'Hallo, saya Alsha Nabilla Hernawan dari Telkom University Jurusan Sistem Informasi'),
          ),
        ],
      ),
    );
  }
}
