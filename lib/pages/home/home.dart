import 'package:fitbuddy/pages/home/widgets/activity.dart';
import 'package:fitbuddy/pages/home/widgets/current.dart';
import 'package:fitbuddy/pages/home/widgets/header.dart';
import 'package:fitbuddy/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        AppHeader(),
        CurrentPrograms(),
        RecentActivities(),
        BottomNavigation(),
      ]),
    );
  }
}
