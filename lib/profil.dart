import 'package:flutter/material.dart';
import 'package:ui_update/detail.dart';


// halaman yang menampilkan profil singkat gedung yang telah di akses
// gedung yang telah terisi data dan dapat diakses hanya gedung paris van java
class Profil extends StatefulWidget {
  @override
  _Profil createState() => new _Profil();
}

class _Profil extends State<Profil> {
/*   List gedung = ["Balubur Town Square"];
  List almt = ["Jl. Sukajadi No.131-139, Cipedes, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162"];
  int index,idx; */

  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Profil Gedung",
        style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold)),
      ),

       body: Container(
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
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                              child: Text("Paris Van Java",
                                      style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 30.0),)  
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 350,
                            height: 200,
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                              // Load image from assets
                                              image: new AssetImage('data_repo/img/img1.jpg'),
                                              fit: BoxFit.fill)
                                        ),
                          ),
                        ]
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          child: Text('Alamat: Jl. Sukajadi No.131-139, Cipedes, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162',
                                  style: TextStyle(fontFamily: 'Raleway', color: Colors.black, fontSize: 15.0),
                                  softWrap: true,
                                  textAlign: TextAlign.justify,)  
                      ),
                     ]
                   ),
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                     child: FlatButton(
                       onPressed: () {
                         _toDetail(context);
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
    );
  }
     void _toDetail(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return new Detail();
      },
    ));
    }
}
