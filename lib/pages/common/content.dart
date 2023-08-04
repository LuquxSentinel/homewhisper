import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      child: child,
    );
  }
}
