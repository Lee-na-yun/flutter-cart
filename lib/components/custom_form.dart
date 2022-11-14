import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({required this.text, required this.hintText, Key? key})
      : super(key: key);
  final String text;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${text}",
          style: TextStyle(
              fontSize: 24,
              color: Color(0xff03559A),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.grey),
              ),
              hintText: "${hintText}",
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
