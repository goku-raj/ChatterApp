import 'dart:developer';
import 'package:chatter_app/api/api.dart';
import 'package:chatter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../main.dart';
import 'auth/login_screen.dart';

//splash screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    //for auto triggering animation
    Future.delayed(const Duration(seconds: 2), () {
      //exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(systemNavigationBarColor: Colors.white, statusBarColor: Colors.white));

        if(APIs.auth.currentUser != null){
          log('\nUser: ${APIs.auth.currentUser}' );
          // navigate to homeScreen
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
        }else{
          //navigate to login screen
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;


    return Scaffold(
      //ap bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to Chatter'),
      ),
      
      body: Stack(children: [
        //app logo
        Positioned(
            top: mq.height* .15,
            right: mq.width * .25,
            width: mq.width* .5,
            child: Image.asset('images/chat_icon.png')),

        //google login bottom
        Positioned(
            bottom: mq.height * .15,
            width: mq.width,
            child: const Text('MADE IN INDIA WITH ❤️',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                letterSpacing: .5
        ))),
      ]),
    );
  }
}
