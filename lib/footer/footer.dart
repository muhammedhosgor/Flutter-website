import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FootherPage extends StatelessWidget {
  FootherPage({super.key, required this.sw});

  double sw;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.red,
      width: sw,
      height: 100,
      child: Column(),
    ));
  }
}
