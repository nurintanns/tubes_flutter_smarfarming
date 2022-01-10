import 'package:flutter/material.dart';
import 'package:uts/navigation_drawer.dart';

class LahanPage extends StatelessWidget {
  const LahanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(
          "Lahan",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        'https://d26bwjyd9l0e3m.cloudfront.net/wp-content/uploads/2019/09/Smart-Farming-Featured.jpg',
                      ),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Nama Lahan 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'nama blok',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'nama posisi',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('Lihat'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        'http://inmind.id/wp-content/uploads/2020/08/images-19.jpeg',
                      ),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Nama Lahan 2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'nama blok',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'nama posisi',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('Lihat'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        'https://www.mongabay.co.id/wp-content/uploads/2021/03/4B-smart-farming-ntt.jpg',
                      ),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Nama Lahan 3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'nama blok',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'nama posisi',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('Lihat'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
