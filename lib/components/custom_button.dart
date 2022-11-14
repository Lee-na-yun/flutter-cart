import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.btnText, {Key? key}) : super(key: key);
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/catalog");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff03559A)),
          padding: MaterialStateProperty.all(
            const EdgeInsets.only(top: 8, bottom: 8),
          ),
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 60)),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 24)),
        ),
        child: Text("${btnText}"),
      ),
    );
  }
}
