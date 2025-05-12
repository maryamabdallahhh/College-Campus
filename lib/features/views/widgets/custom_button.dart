import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final void Function()? ontap;
  final bool isLoading;

  const CustomBottom({super.key, required this.ontap, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, bottom: 20),
      child: GestureDetector(
        onTap: isLoading ? null : ontap,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xffF5F378),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Center(
            child:
                isLoading
                    ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.black,
                      ),
                    )
                    : Text(
                      'Log in',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
          ),
        ),
      ),
    );
  }
}
