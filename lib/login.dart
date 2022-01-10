import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uts/main.dart';
import 'package:uts/home.dart';
// import 'package:splashscreen/splashscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  late String nUsername, nPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Silahkan masukkan username';
                        } else if (value != 'alsha') {
                          return 'Username salah';
                        }
                        return null;
                      },
                      controller: myUsernameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.person,
                            size: 40,
                          ),
                          labelText: 'Username',
                          hintText: 'Masukkan Username'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Silahkan masukkan password';
                        } else if (nPassword.length < 5) {
                          return 'Password salah';
                        }
                        return null;
                      },
                      maxLength: 16,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      controller: myPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 40,
                          ),
                          labelText: 'Password',
                          hintText: 'Masukkan Password'),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //TODO FORGOT PASSWORD SCREEN GOES HERE
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        nUsername = myUsernameController.text;
                        nPassword = myPasswordController.text;

                        if (_formKey.currentState!.validate()) {
                          if (nUsername != 'alsha') {
                            print("username tidak dikenal");
                          } else if (nPassword.length < 5) {
                            print("password tidak sesuai");
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage(
                                          nama: nUsername,
                                          password: nPassword,
                                        )));
                          }
                        }
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('New User? Create Account')
                ],
              ),
            )));
  }
}
