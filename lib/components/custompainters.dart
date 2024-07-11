import 'package:flutter/material.dart';

class HomeSABPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    var rect = Offset.zero & size;
    Paint paint = Paint();

    Path background = Path();
    background.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.grey[50];
    canvas.drawPath(background, paint);

    Path wavePath = Path();
    wavePath.lineTo(0, height * 0.55);

    wavePath.quadraticBezierTo(
        width * 0.19, height * 0.73, width * 0.34, height * 0.44);

    wavePath.quadraticBezierTo(
        width * 0.45, height * 0.24, width * 0.6, height * 0.41);

    wavePath.quadraticBezierTo(
        width * 0.77, height * 0.63, width / 4 * 4, height * 0.488);

    wavePath.lineTo(width, 0);

    wavePath.close();

    paint.shader = LinearGradient(
      colors: [
        Color.fromARGB(255, 80, 4, 224),
        Color.fromARGB(255, 106, 20, 224),
        Color.fromARGB(255, 135, 40, 225),
      ],
    ).createShader(rect);
    canvas.drawPath(wavePath, paint);
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CoursesSABPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    var rect = Offset.zero & size;
    Paint paint = Paint();

    Path background = Path();
    background.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.grey[50];
    canvas.drawPath(background, paint);

    Path wavePath = Path();
    wavePath.moveTo(width, 0);

    wavePath.lineTo(width, height * 0.6);

    wavePath.quadraticBezierTo(
        width * 0.96, height * 0.63, width * 0.9, height * 0.68);

    wavePath.quadraticBezierTo(
        width * 0.5, height * 0.97, width * 0.17, height * 0.44);

    wavePath.quadraticBezierTo(width * 0.1, height * 0.34, 0, height * 0.393);

    wavePath.lineTo(0, 0);

    wavePath.close();

    paint.shader = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color.fromARGB(255, 80, 4, 224),
        Color.fromARGB(255, 106, 20, 224),
        Color.fromARGB(255, 135, 40, 225),
      ],
    ).createShader(rect);
    canvas.drawPath(wavePath, paint);
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NotesSABPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    var rect = Offset.zero & size;
    Paint paint = Paint();

    Path background = Path();
    background.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.grey[50];
    canvas.drawPath(background, paint);

    Path wavePath = Path();
    wavePath.moveTo(width, 0);

    wavePath.lineTo(width, height);

    wavePath.quadraticBezierTo(
        width * 0.87, height, width * 0.77, height * 0.86);

    wavePath.quadraticBezierTo(
        width * 0.67, height * 0.73, width * 0.57, height * 0.8);

    wavePath.quadraticBezierTo(
        width * 0.27, height * 0.98, width * 0.15, height * 0.7);

    wavePath.quadraticBezierTo(width * 0.08, height * 0.54, 0, height * 0.6);

    wavePath.lineTo(0, 0);

    wavePath.close();

    paint.shader = LinearGradient(
      colors: [
        Color.fromARGB(255, 80, 4, 224),
        Color.fromARGB(255, 106, 20, 224),
        Color.fromARGB(255, 135, 40, 225),
      ],
    ).createShader(rect);
    canvas.drawPath(wavePath, paint);
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class LeaderBoardSABPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    var rect = Offset.zero & size;
    Paint paint = Paint();

    Path background = Path();
    background.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.grey[50];
    canvas.drawPath(background, paint);

    Path wavePath = Path();

    // full width design
    // wavePath.lineTo(0, height * 0.352);
    // wavePath.quadraticBezierTo(
    //     width * 0.19, height * 0.43, width * 0.34, height * 0.312);
    // wavePath.quadraticBezierTo(
    //     width * 0.45, height * 0.24, width * 0.6, height * 0.31);
    // wavePath.quadraticBezierTo(
    //     width * 0.73, height * 0.39, width * 0.86, height * 0.3);
    // wavePath.quadraticBezierTo(
    //     width * 0.94, height * 0.25, width / 4 * 4, height * 0.25);
    // wavePath.lineTo(width, 0);

    wavePath.lineTo(0, height);

    wavePath.quadraticBezierTo(
        width * 0.19, height, width * 0.32, height * 0.81);

    wavePath.quadraticBezierTo(
        width * 0.45, height * 0.6, width * 0.6, height * 0.75);

    wavePath.quadraticBezierTo(
        width * 0.74, height * 0.95, width * 0.86, height * 0.72);

    wavePath.quadraticBezierTo(width * 0.94, height * 0.6, width, height * 0.6);

    wavePath.lineTo(width, 0);

    wavePath.close();

    paint.shader = LinearGradient(colors: [
      Color.fromARGB(255, 80, 4, 224),
      Color.fromARGB(255, 106, 20, 224),
      Color.fromARGB(255, 135, 40, 225),
    ]).createShader(rect);
    canvas.drawPath(wavePath, paint);
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
