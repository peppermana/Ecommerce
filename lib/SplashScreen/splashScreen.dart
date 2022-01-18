import 'package:flutter/material.dart';
import 'package:latihan_e_commerce/MainTabbar/main_tabbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void delayed(BuildContext, context) {
    Future.delayed (Duration(seconds: 3), () async{

      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => MainTabbar()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/logo1.jpg",
              height: 500,
              width: 500,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
