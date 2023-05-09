// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:menu_sessao_web/pages/widgets/menu.dart';
import 'package:menu_sessao_web/pages/widgets/section.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final keySecao1 = GlobalKey();
  final keySecao2 = GlobalKey();
  final keySecao3 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        scrollController.animateTo(0,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      }),
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Menu(
              onMenuClick: _onMenuClick,
            ),
            Section(key: keySecao1, color: Colors.red, height: 1000),
            Section(key: keySecao2, color: Colors.blue, height: 200),
            Section(key: keySecao3, color: Colors.black, height: 2000),
          ],
        ),
      ),
    );
  }

  void _onMenuClick(int value) {
    final RenderBox renderBox;
    switch (value) {
      case 1:
        renderBox = keySecao1.currentContext!.findRenderObject() as RenderBox;
        break;

      case 2:
        renderBox = keySecao2.currentContext!.findRenderObject() as RenderBox;
        break;

      case 3:
        renderBox = keySecao3.currentContext!.findRenderObject() as RenderBox;
        break;

      default:
        throw Exception();
    }
    final offSet = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo(
      offSet.dy,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }
}
