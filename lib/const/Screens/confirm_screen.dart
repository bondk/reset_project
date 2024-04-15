import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reset/const/color.dart';

import '../../Widgets/primary_button.dart';
import 'new_password.dart';
class ConfirmScreen extends StatefulWidget {
   const ConfirmScreen({super.key });

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  final TextEditingController _otpController = TextEditingController();

  String _obscuredText = '';

  @override
  void initState() {
    super.initState();
    _otpController.addListener(_updateObscuredText);
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }


  void _updateObscuredText() {
    setState(() {
      // Update the displayed text with asterisks of the same length as the entered text
      _obscuredText = '*' * _otpController.text.length;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimarywhiteColor,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [LengthLimitingTextInputFormatter(5)],
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    hintText: _obscuredText.isNotEmpty ? _obscuredText : 'Enter the code',
                    hintStyle: const TextStyle(color: Colors.black12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPassword()));
                    },
                    child: PrimaryButton(buttonText: 'Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
