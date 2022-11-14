import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildCartAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            _MyListItem(Color(0xffbfe6f3)),
            _MyListItem(Color(0xff13b8fb)),
            _MyListItem(Color(0xff0175c2)),
            _MyListItem(Color(0xff02559a)),
            _MyListItem(Color(0xff1b364f)),
          ],
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

  AppBar _buildCartAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff03559A),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/cart");
          },
          icon: Icon(Icons.shopping_cart),
        )
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Catalog",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
