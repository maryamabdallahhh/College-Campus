import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final void Function()? ontap;
  const CustomBottom({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, bottom: 20),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xffF5F378),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Center(
            child: Text(
              'Log in',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
