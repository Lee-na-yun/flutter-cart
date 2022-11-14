import 'package:flutter/material.dart';
import 'package:flutter_cart/components/custom_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildCartAppBar(context),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 50),
        child: Column(
          children: [
            _MyListItem(
              Color(0xffbfe6f3),
            ),
            SizedBox(height: 60),
            CustomButton("BUY"),
          ],
        ),
      ),
    );
  }

  AppBar _buildCartAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff03559A),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Cart",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }

  Widget _MyListItem(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: mColor,
              shape: BoxShape.rectangle,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Add",
            style: TextStyle(
                fontSize: 24,
                color: Color(0xff03559A),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
