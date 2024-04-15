import 'package:flutter/material.dart';
import 'package:reset/Widgets/primary_button.dart';
import 'package:reset/Widgets/resetform.dart';
import 'package:reset/const/color.dart';


import 'confirm_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Directionality(
    textDirection: TextDirection.ltr,
    child: Scaffold(
    body: Padding(
    padding: kDefaultPadding,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(height: 200),
    const Text(
    'Reset Password',
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),
    ),
    const SizedBox(height: 5),
    const Text(
    'Please enter your email address',
    style: TextStyle(color: kPrimarygrayColor, fontSize: 18, fontWeight: FontWeight.w500),
    ),
    const SizedBox(height: 10),
      TextFormField(
        decoration: const InputDecoration(
            hintText: 'Email'
            ,hintStyle: TextStyle(color: Colors.black12,),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
            )

        ),
      ),

    const SizedBox(height: 40),
    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ConfirmScreen(),),);
    },
    child: PrimaryButton(buttonText: 'Reset Password'),
    ),

    ],
    ),
    ),
    ),
    ),
    );
    }
    }




