import 'package:flutter/material.dart';
import 'package:quizapp/shared/bottom_nav.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Login screen'),
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}
