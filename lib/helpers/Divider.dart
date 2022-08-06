import 'package:flutter/material.dart';

class myDivider extends StatelessWidget {
  const myDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Divider(
        thickness: 2,
      ),
    );
  }
}
