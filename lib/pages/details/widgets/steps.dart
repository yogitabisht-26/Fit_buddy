// ignore_for_file: unused_import

import 'dart:math';
import 'package:fitbuddy/helpers.dart';
import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    String steps = formatNumber(randBetween(3000, 6000));
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            steps,
            style: const TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            'Total Steps',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w800,
              height: 2,
            ),
          )
        ],
      ),
    );
  }
}
