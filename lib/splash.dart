import 'package:flutter/material.dart';
import 'package:uts_ewallet/screens/auth/login.dart';
import 'package:uts_ewallet/screens/home/home.dart';
import 'package:uts_ewallet/widgets/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checkUserSementara(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: wAppLoading()
    );
  }

  void _checkUserSementara(bool user) async {
    await Future.delayed(Duration(seconds: 2));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => user ? Home() : Login()),
    );
  }
}
