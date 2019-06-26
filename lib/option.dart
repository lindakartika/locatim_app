import 'package:flutter/material.dart';


// halaman yang menampilkan list nama gedung yang ingin di akses
// gedung yang telah terisi data dan dapat diakses hanya gedung paris van java
class Pilihan extends StatefulWidget {
  @override
  _Pilihan createState() => new _Pilihan();
}

class _Pilihan extends State<Pilihan> {
  List gedung = ["Balubur Town Square", "Cihampelas Walk", "Bandung Indah Plaza", "Bandung Electronic Center", "Paris van Java"];
  
  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Pilihan Nama Gedung",
        style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold)),
         actions: <Widget>[      // kembali ke halaman akses data
          new IconButton(icon: const Icon(Icons.highlight_off), 
                onPressed: () {
                  Navigator.pop(context);
                  })
        ],
      ),

       body: ListView.builder(
         itemCount: gedung.length,
         shrinkWrap: true,
         itemBuilder: (BuildContext context, int index) => Container(
           width: MediaQuery.of(context).size.width,
           padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
           child : Card (
             elevation : 5.0,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(5.0),
             ),
             child: Container(
               width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 8.0),
                     child: FlatButton(
                       onPressed: () { 
                         Navigator.pop(context, gedung[index]);
                         },
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(gedung[index],
                   style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),)
                     )
                   ),
                  ],
               )
             ),
           ),
         )
       )
    );
  }
}
