import 'package:flutter/material.dart';

import 'home.dart';
 void main(){
   runApp(Reset());
 }
 class Reset extends StatelessWidget {
   const Reset ({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: HomeScreen(),

     );
   }
 }
