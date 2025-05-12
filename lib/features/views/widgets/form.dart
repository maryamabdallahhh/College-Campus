import 'package:college_campus/features/views/home_page.dart';
import 'package:college_campus/features/views/widgets/custom_button.dart';
import 'package:college_campus/features/views/widgets/custom_textformfeild.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController, passwordController;
  String? email, password;
  AutovalidateMode autovalidate = AutovalidateMode.disabled;
  final formkey = GlobalKey<FormState>();
  final String apiUrl =
      'https://mu-compass-backend.onrender.com/api/v1/auth/login';

  String result = '';
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _postData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': emailController.text,
          'password': passwordController.text,
        }),
      );

      if (response.statusCode == 201) {
        // final responseData = jsonDecode(response.body);

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => HomePage()),
        );
      } else {
        throw Exception('email or password is incorrect!');
      }
    } catch (e) {
      setState(() {
        result =
            e is Exception
                ? e.toString().replaceFirst('Exception: ', '')
                : '$e';
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 42.0,
        vertical: MediaQuery.of(context).size.height * 0.1119,
      ),
      child: Form(
        autovalidateMode: autovalidate,
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: "Poppins",
              ),
            ),
            CustomTextformfeild(
              controller: emailController,
              keyboardtype: TextInputType.emailAddress,
              onsaved: (value) => email = value,
            ),
            Text(
              '  password',
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            CustomTextformfeild(
              controller: passwordController,
              obscure: true,
              onsaved: (value) => password = value,
            ),
            if (result.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                  child: Text(
                    result,
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            CustomBottom(
              ontap: () async {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  await _postData();
                } else {
                  setState(() {
                    autovalidate = AutovalidateMode.always;
                  });
                }
              },
              isLoading: isLoading,
            ),
            GestureDetector(
              onTap: () {},
              child: Center(child: Text('forget password?')),
            ),
          ],
        ),
      ),
    );
  }
}
