import 'package:flutter/material.dart';
import 'package:ui_update/akses.dart';

// halaman yang menampilkan tampilan data terakhir berupa jumlah orang yang masih tertangkap kamera di setiap ruangan
class Lantai extends StatefulWidget {
  @override
  _Lantai createState() => new _Lantai();
}

class _Lantai extends State<Lantai> {
  List ruang = ["A1", "A2", "A3","A4", "A5", "A6","A7", "A8", "A9"];
  List jumlah = ["1", "0", "12","1", "0", "3","4", "0", "0"];
  
  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Detail Data",
        style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold)),
        actions: <Widget>[      // kembali ke halaman akses data
          new IconButton(icon: const Icon(Icons.highlight_off), 
                onPressed: () {
                  _toAkses(context);
                  })
        ],
      ),

       body: ListView.builder(
         itemCount: ruang.length,
         shrinkWrap: true,
         itemBuilder: (BuildContext context, int index) => Container(
           width: MediaQuery.of(context).size.width,
           padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
           child : Card (
             elevation : 5.0,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(5.0),
             ),
             child: Container(
               width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   
                   // space untuk nama ruangan yang ditampilkan
                   Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Text(ruang[index],
                      style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize:  20.0),)
                        )
                      ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text('Jumlah orang tersisa :',
                      style: TextStyle(fontFamily: 'Raleway', fontSize:  10.0),
                      )
                        )
                      ),

                      // space untuk data jumlah orang yang tersisa
                      Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 0.0),
                     child: FlatButton(
                       onPressed: () {},
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(jumlah[index],
                      style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize:  20.0),)
                     )
                    )
                    ]
                   ),
                  ],
               )
             ),
           ),
         )
       ),
    );
  }
 
/*  void _toAkses(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName('/akses'));
    } */

   void _toAkses(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return new Akses();
      },
    ));
    }
}
