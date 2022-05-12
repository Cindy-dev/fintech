import 'dart:math' as math;

import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  final double diameter;
  const Onboarding({Key key, this.diameter = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromRGBO(9, 133, 119, 100),
        body: Column(
          children: [
            RotatedBox(
              quarterTurns: 7,
              child: CustomPaint(
                painter: Painter(),
                size: Size(diameter, diameter),
              ),
            ),
            Text(
              'e-duit',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 2,
            ),
            Container(
                alignment: Alignment.center,
                child: Image.asset('asset/image/wallet.png')),
            Text(
              'Manage your finances\n more easily',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              height: size.height * .09,
              width: size.width * .8,
              child: Text(
                'Log in',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
            Spacer(
              flex: 2,
            ),
            RotatedBox(
              quarterTurns: 5,
              child: CustomPaint(
                painter: Painter(),
                size: Size(diameter, diameter),
              ),
            ),
          ],
        ));
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white54;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 1.5, size.width / .679),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
// class Painter2 extends CustomPainter{

// @override  
// void paint(Canvas canvas, Size size){ 
//   final rect =  Rect.fromCenter(  
//         center: Offset(size.height /50, size.width / 2),     
//         height: size.height,
//         width: size.width,
//       ); 
//   final startAngle = -math.pi / 2;  
//   final sweepAngle = math.pi;
//   final useCenter = false;
//   final paint = Paint()
//   ..color = Colors.white
//   ..style = PaintingStyle.stroke
//   ..strokeWidth = 4;
//   canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
// }
// @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }

  
// }