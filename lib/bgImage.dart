import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg-1.jpg",
      fit: BoxFit.cover,
      height: 350,
      width: 500,
    );
  }
}
