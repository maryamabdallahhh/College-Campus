import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextformfeild extends StatelessWidget {
  final String hintText;
  final bool obscure;
  final void Function(String?)? onsaved;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputformatters;
  final TextInputType? keyboardtype;

  const CustomTextformfeild({
    super.key,
    required this.hintText,
    this.obscure = false,
    required this.onsaved,
    this.controller,
    this.inputformatters,
    this.keyboardtype,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: TextFormField(
        keyboardType: keyboardtype,
        inputFormatters: inputformatters,
        controller: controller,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'the feild is empty';
          }
          if (keyboardtype == TextInputType.emailAddress) {
            final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
            if (!emailRegex.hasMatch(value.toString())) {
              return 'Enter a valid email';
            }
          }
          return null;
        },
        // onSaved: onsaved,
        cursorColor: Colors.black87,
        style: TextStyle(color: Colors.black87),
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xffBDBBBB)),
          filled: true,
          fillColor: Colors.white,
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(32));
  }
}
