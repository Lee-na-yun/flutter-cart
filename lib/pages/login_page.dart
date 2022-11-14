import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cart/components/custom_button.dart';
import 'package:flutter_cart/components/custom_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildCartAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 50),
        child: Column(
          children: [
            CustomForm(text: "Login", hintText: "아이디를 입력하세요."),
            CustomForm(text: "Password", hintText: "비밀번호를 입력하세요."),
            CustomButton("Enter"),
          ],
        ),
      ),
    );
  }

  AppBar _buildCartAppBar() {
    return AppBar(
      backgroundColor: Color(0xff03559A),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Welcome",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
