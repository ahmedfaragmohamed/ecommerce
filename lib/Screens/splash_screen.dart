import 'package:ecommerce/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context){
            return LoginScreen();

          }),
              (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff40bfff),
        body: Center(child: Image.asset("assets/images/vector.png",
        width: 60,
        height: 60),),
    );
  }
}
