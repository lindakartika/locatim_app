import 'package:flutter/material.dart';
import 'package:ui_update/lantai.dart';


// halaman yang menampilkan list lantai gedung yang telah di akses untuk ditampilkan data pada halaman selanjutnya
// gedung yang telah terisi data dan dapat diakses hanya lantai 1
class Detail extends StatefulWidget {
  @override
  _Detail createState() => new _Detail();
}

class _Detail extends State<Detail> {
  List lantai = ["Lantai 1", "Lantai 2", "Lantai 3"];
  
  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Tampilan Data",
        style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold)),
      ),

       body: ListView.builder(
         itemCount: lantai.length,
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
                   // space untuk menampilkan keterangan lantai
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 10.0),
                     child: FlatButton(
                       onPressed: () {
                         if (lantai[index] == "Lantai 1"){
                            _toLantai(context);
                         }
                         else{
                         
                         }
                       },
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(lantai[index],
                   style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),)
                     )
                   ),
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 0.0),
                     child: FlatButton(
                       onPressed: () {
                         // hanya akan menampilkan data dari lantai 1
                         if (lantai[index] == "Lantai 1"){
                            _toLantai(context);
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
       ),
    );
  }
     void _toLantai(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return new Lantai();
      },
    ));
    }
}
