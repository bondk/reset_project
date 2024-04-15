import'package:flutter/material.dart';
import 'package:reset/Widgets/primary_button.dart';

import 'change.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                 TextField(
                   obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Enter the new password',
                    suffixStyle: const TextStyle(color: Colors.black12),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                      onPressed: _toggleVisibility,

                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [

                       TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'Re-enter the password',suffixStyle: TextStyle(color: Colors.black12),
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                            onPressed: _toggleVisibility,)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const ChangeScreen();
                            }));
                          },
                            child: PrimaryButton(buttonText: 'Confirm')),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
