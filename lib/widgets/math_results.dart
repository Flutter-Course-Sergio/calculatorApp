import 'package:flutter/material.dart';

import 'widegts.dart';

class MathResults extends StatelessWidget {
  const MathResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubResult(text: '1000'),
        SubResult(text: '+'),
        SubResult(text: '1000'),
        const LineSeparator(),
        MainResult(text: '2000'),
      ],
    );
  }
}
