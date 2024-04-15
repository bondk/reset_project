import 'package:flutter/material.dart';
class ChangeScreen extends StatelessWidget {
  const ChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
        alignment: Alignment.center,
        child: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('You`ve changed your password!',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
        ),
      
      ),
    );
  }
}
