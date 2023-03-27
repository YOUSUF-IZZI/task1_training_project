import 'dart:html';
import 'package:flutter/material.dart';
import 'custom_navigation_bar.dart';


class CustomScaffold extends StatefulWidget {
  CustomScaffold({required this.child, Key? key}) : super(key: key);
  Widget child ;
  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
