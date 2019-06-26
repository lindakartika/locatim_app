import 'package:flutter/material.dart';
import 'package:ui_update/akses.dart';


// halaman yang menampilkan list lokasi kota pada gedung yang akan di akses
// gedung yang telah terisi data dan dapat diakses hanya kota Bandung
class Lokasi extends StatefulWidget {
  @override
  _Lokasi createState() => new _Lokasi();
}

class _Lokasi extends State<Lokasi> {
  List kota = ["Bandung", "Palu", "Lombok", "Yogyakarta", "Bali"];
  
  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Pilih Lokasi",
        style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold)),
      ),

       body: ListView.builder(
         itemCount: kota.length,
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
                     padding: EdgeInsets.symmetric(horizontal: 10.0),
                     child: FlatButton(
                       onPressed: () {
                         if (kota[index] == "Bandung"){
                          _toAkses(context);
                         }
                         else{
                         
                         }
                       },
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(kota[index],
                   style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),)
                     )
                   ),
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 0.0),
                     child: FlatButton(
                       onPressed: () {
                         // hanya akan menampilkan data dari kota Bandung
                         if (kota[index] == "Bandung"){
                          _toAkses(context);
                         }
                         else{
                         
                         }
                       },
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Icon(Icons.navigate_next),
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

   void _toAkses(BuildContext context) {
    Navigator.of(context).pushReplacement(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return new Akses();
      },
    ));
    }
}
