import 'package:flutter/material.dart';

import 'constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: kBgColor,
        child: CustomPaint(
          painter: BackgroundPaint(),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',

                alignment: Alignment.center,
                //color: kHeaderColor,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/oraimo pods.png',
                  alignment: Alignment.center,
                  //color: kHeaderColor,
                ),
              ),
              Text(
                'Oraimo riff'.toUpperCase(),
                style: const TextStyle(
                  color: kHeaderColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'smaller for comfort'.toUpperCase(),
                style: const TextStyle(
                  color: kHeaderColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'wireless earbuds'.toUpperCase(),
                style: const TextStyle(
                  color: kPainterColor,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(

                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 60,
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: kPainterColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
                    ),
                    child: IconButton(
                        icon: const Icon(Icons.arrow_forward_outlined,color: kHeaderColor,),
                        // using named route to navigate
                        onPressed: () => Navigator.pushNamed(context, '/details',)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = kPainterColor;

    Path upperPath = Path();

    upperPath.moveTo(0, height * 0.5);
    upperPath.quadraticBezierTo(
        width * 0.50, height * 0.72, width, height * 0.5);

    upperPath.lineTo(width, 0);
    upperPath.lineTo(0, 0);

    canvas.drawPath(upperPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}