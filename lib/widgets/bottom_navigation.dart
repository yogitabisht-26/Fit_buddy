import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.grey,
      child: IconTheme(
          data: const IconThemeData(color: Colors.black),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            const Icon(Icons.add_chart),
            const Icon(Icons.location_on),
            Transform.translate(
              offset: const Offset(0, -30),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        colors: [
                          Color(0xff92e2ff),
                          Color(0xff1ebdf8),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3, 3),
                          blurRadius: 3,
                        )
                      ]),
                  child: const Icon(Icons.home, color: Colors.white),
                ),
              ),
            ),
            const Icon(Icons.chat_bubble_rounded),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/details');
                },
                child: const Icon(Icons.account_circle)),
          ])),
    );
  }
}
