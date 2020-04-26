import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/services.dart';
import '../shared/shared.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  final AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {

    var user = Provider.of<FirebaseUser>(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(user.displayName ?? 'Guest'),
      ),
      body: Center(
        child: FlatButton(onPressed: () async {
          await auth.signOut();
          Navigator.of(context)
            .pushNamedAndRemoveUntil('/', (route) => false);
        }, child: null),
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}
