import 'package:flutter/material.dart';
import 'package:reset/Widgets/primary_button.dart';
import 'package:reset/const/color.dart';

import '../../Widgets/resetform.dart';
import 'confirm_screen.dart';

void main() {
  runApp(const ResetPassword());
}

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                const ResetForm(),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return ConfirmScreen();
                    }));
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
