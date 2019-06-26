import 'package:flutter/material.dart';
import 'package:ui_update/lokasi.dart';
import 'package:ui_update/option.dart';
import 'package:ui_update/profil.dart';

// halaman yang menampilkan list data gedung yang telah di akses
// gedung yang telah terisi data hanya gedung paris van java
class Akses extends StatefulWidget {
  @override
  _Akses createState() => new _Akses();
}

class _Akses extends State<Akses> {
    List<String> litems = [];
    String awal = 'No Data';

 @override
  void initState() {
    super.initState();
    litems.add(awal);
  }
  
  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Gedung Terakses",
        style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold)),
        actions: <Widget>[      // kembali ke halaman akses data
          new IconButton(icon: const Icon(Icons.add_location), 
                onPressed: () {
                  _toLokasi(context);
                  })
        ],
      ),

       body: ListView.builder(
         itemCount: litems.length,
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
                     child: Builder(builder: (context) => FlatButton(
                       onPressed: () {
                         if (litems[index] == "Paris van Java"){
                          _toProfil(context);
                         }
                         else{
                          Scaffold.of(context)
                          ..removeCurrentSnackBar()
                          ..showSnackBar(SnackBar(content: Text("Tidak terdapat data yang ditampilkan"), duration: new Duration(seconds: 1)));
                         }
                       },
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(litems[index],
                   style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),)
                     )
                    ), 
                   ),
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 0.0),
                     child: Builder(builder: (context) => FlatButton(
                        onPressed: () {
                          if (litems[index] == "Paris van Java"){
                            _toProfil(context);
                          }
                          else{
                          Scaffold.of(context)
                          ..removeCurrentSnackBar()
                          ..showSnackBar(SnackBar(content: Text("Tidak terdapat data yang ditampilkan"), duration: new Duration(seconds: 1)));                          
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Icon(Icons.navigate_next),
                      )
                     ),
                   ),
                  ],
               )
             ),
           ),
         )
       ),
       
       floatingActionButton: Builder (
        builder: (context) => FloatingActionButton(
          onPressed: () => _navigateAndDisplaySelection(context),
          tooltip: 'To Selection',
          child: Icon(Icons.add),
       ),
      ),
    );
  }

       void _toLokasi(BuildContext context) async {
    Navigator.of(context).pushReplacement(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return new Lokasi();
      },
    ));
    }

     void _toProfil(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return new Profil();
      },
    ));
    }

_navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that will complete after we call
    // Navigator.pop on the Selection Screen!
     final result = await Navigator.of(context).push(new MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) {
                            return new Pilihan();
                          },
                        ));
      if (result == null) {
          Scaffold.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text("Tidak terdapat data yang diakses"), duration: new Duration(seconds: 1)));
      } else { 
          Scaffold.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text("Data $result berhasil diakses"), duration: new Duration(seconds: 1)));
          litems.remove(awal);
          litems.add(result);
      } 
  }   
}
