import 'package:flutter/material.dart';

class ThemeTextColor extends StatelessWidget {
  const ThemeTextColor({
    Key? key,
    required this.text,
    required this.bycolor,
  }) : super(key: key);

  final String text;
  final Color bycolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: bycolor,
      child: Center(child: Text(text)),
    );
  }
}
