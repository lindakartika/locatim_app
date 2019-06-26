import 'package:flutter/material.dart';
import 'package:ui_update/akses.dart';
import 'package:ui_update/button_akses.dart';
import 'package:ui_update/lokasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LocaTim',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
      routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/home': (context) => HomeScreen(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/lokasi': (context) => Lokasi(),
      '/akses': (context) => Akses(),
      /* '/option': (context) => Pilihan(),            
      '/profil': (context) => Profil(),
      '/detail': (context) => Detail(),
      '/lantai': (context) => Lantai(), */
    },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      // appBar: AppBar(
      //   title: Text('Home Screen'),
      // ),
      body:new Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Opacity(
                          opacity: 0.45,
                          child: const Text(
                          '"LocaTim"',
                          style: TextStyle(color: Colors.white, fontSize: 60, fontFamily: 'ProductSans'),
                          textAlign: TextAlign.center,
                          ),
                        )
                   /* Text(
                          '"LocaTim"',
                          style: TextStyle(color: Colors.white, fontSize: 60, fontFamily: 'ProductSans'),
                          textAlign: TextAlign.center,
                        ), */
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ButtonTampil(
                         onPressed: () {
                          Navigator.pushNamed(context, '/lokasi');
                          },
                        ),
                )
              ],
            ),
          ),
        ),
      );
  }
}