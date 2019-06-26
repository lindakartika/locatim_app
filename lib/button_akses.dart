import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
 
class ButtonTampil extends StatelessWidget {
  ButtonTampil({@required this.onPressed});
  final GestureTapCallback onPressed;
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      splashColor: Colors.blue,
      elevation: 5.0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            SizedBox(
              width: 160.0,
              height: 50.0,
              child: Center( 
                child : Opacity(
                          opacity: 0.98,
                          child: const Text(
                            "Akses Data",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'RobotoMono', fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                /* Text(
              "Akses Data",
              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'RobotoMono', fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ), */
              ),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
    );
  }
}