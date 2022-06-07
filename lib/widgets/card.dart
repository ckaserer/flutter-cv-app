import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Icon leading;
  final String title;
  final VoidCallback onTap;

  const MyCard({
    Key? key,
    required this.leading,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: leading,
          title: Text(title),
        ),
      ),
    );
  }
}
