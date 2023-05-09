// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final ValueChanged<int> onMenuClick;
  const Menu({
    Key? key,
    required this.onMenuClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
            onPressed: () => onMenuClick(1),
            child: const Text("Seção 1"),
          ),
          TextButton(
            onPressed: () => onMenuClick(2),
            child: const Text("Seção 2"),
          ),
          TextButton(
            onPressed: () => onMenuClick(3),
            child: const Text("Seção 3"),
          ),
        ],
      ),
    );
  }
}
