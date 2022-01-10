import 'package:flutter/material.dart';
import 'package:uts/login.dart';
import 'package:uts/splashcreen.dart';
import 'package:uts/navigation_drawer.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CarouselModel {
  var image;
  String i(String image) => image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/img1.jpg"},
  {"image": "assets/images/img2.jpg"},
  {"image": "assets/images/img3.jpg"},
];

class InformasiModel {
  var name;
  var image;

  String n(String name) => name;
  String i(String image) => image;

  InformasiModel(this.name, this.image);
}

List<InformasiModel> Informasi =
    InformasiData.map((item) => InformasiModel(item['name'], item['image']))
        .toList();

var InformasiData = [
  {"name": "Impact", "image": "assets/images/analytics.png"},
  {"name": "Approach", "image": "assets/images/settings.png"},
  {"name": "Service", "image": "assets/images/multiple-users-silhouette.png"},
];

class MyHomePage extends StatefulWidget {
  final String nama;
  final String password;
  const MyHomePage({Key? key, required this.nama, required this.password})
      : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  final BlueColor = Color(0xFF2C53B1);
  final GreyColor = Color(0xFFB4B0B0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.jpg',
          height: 55,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: Swiper(
                    onIndexChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    autoplay: true,
                    layout: SwiperLayout.DEFAULT,
                    itemCount: carousels.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(
                                carousels[index].image,
                              ),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: map<Widget>(
                        carousels,
                        (index, image) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    _current == index ? BlueColor : GreyColor),
                          );
                        },
                      ),
                    ),
                    Text(
                      'More...',
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Center(
                      child: Text(
                        'What We Do',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 24,
                        ),
                      ),
                    )),
                Container(
                  height: 140,
                  child: ListView.builder(
                    itemCount: Informasi.length,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: InkWell(
                          onTap: () => null,
                          child: Container(
                            height: 140,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 16),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    Informasi[index].image,
                                    height: 74,
                                  ),
                                  Text(
                                    Informasi[index].name,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Center(
                      child: Text(
                        'Our Projects',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 24,
                        ),
                      ),
                    )),
                Container(
                  height: 144,
                  margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () => null,
                              child: Container(
                                margin: EdgeInsets.only(right: 2),
                                padding: EdgeInsets.only(left: 12),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.green, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text('SmartFarming Cotton',
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () => null,
                              child: Container(
                                margin: EdgeInsets.only(right: 2),
                                padding: EdgeInsets.only(left: 12),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.green, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text('Day Old Chick',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () => null,
                              child: Container(
                                margin: EdgeInsets.only(right: 2),
                                padding: EdgeInsets.only(left: 12),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.green, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text('SmartFarming Potato',
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () => null,
                              child: Container(
                                margin: EdgeInsets.only(right: 2),
                                padding: EdgeInsets.only(left: 12),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.green, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text('My Crop Care',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
