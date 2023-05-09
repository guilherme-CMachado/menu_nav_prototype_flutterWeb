// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final Color color;
  final double height;
  const Section({
    Key? key,
    required this.color,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
    );
  }
}
