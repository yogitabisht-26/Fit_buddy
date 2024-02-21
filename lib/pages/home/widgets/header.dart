import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(children: [
        CustomPaint(
          painter: HeaderPainter(),
          size: const Size(double.infinity, 200),
        ),
        //Menu button kya kaam krega wo likhna h ()m
        Positioned(
          top: 20,
          left: 20,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          top: 20,
          right: 40,
          child: CircleAvatar(
            minRadius: 25,
            maxRadius: 25,
            child: Icon(Icons.chat),
            //foregroundImage: AssetImage('assets/Message.jpg'),
          ),
        ),
        const Positioned(
          left: 33,
          bottom: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              Text(
                'Harshita',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint backColor = Paint()..color = const Color(0xff18b0e8);
    Paint circles = Paint()..color = Colors.white.withAlpha(40);
    canvas.drawRect(
      Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)),
      backColor,
    );

    canvas.drawCircle(Offset(size.width * .65, 10), 30, circles);
    canvas.drawCircle(Offset(size.width * .60, 130), 10, circles);
    canvas.drawCircle(Offset(size.width - 10, size.height - 10), 20, circles);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
