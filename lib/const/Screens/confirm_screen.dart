import 'package:flutter/material.dart';
class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: 'Enter the code'
            ,hintStyle: TextStyle(color: Colors.black12,),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
            )

        ),
      ),
    );
  }
}
