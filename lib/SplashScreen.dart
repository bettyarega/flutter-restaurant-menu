import 'package:cp_rest_app/category/services/catService.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final int duration;
  final Widget toHome;

  SplashScreen({this.duration, this.toHome});

  @override
  Widget build(BuildContext context) {
    // CatService catService = CatService();
    Future.delayed(Duration(seconds: this.duration), () async {
      //FirebaseApp fbApp = await Firebase.initializeApp();

      // catService.getCategoriesfrmFirebase().then((value) {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => this.toHome));
      // });

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.toHome));
    });

    return Container(
      color: Color(0xf32e3337),
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.face,
            color: Colors.cyanAccent,
            size: 100,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white.withOpacity(0.5),
            )),
          ),
        ),
      ]),
    );
  }
}
