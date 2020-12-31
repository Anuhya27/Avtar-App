import 'package:flutter/material.dart';
import 'package:avtar_app/courses.dart';
import 'package:avtar_app/main.dart';

class OpenPainter1 extends CustomPainter {
  int process;
  //this.process=process;
  OpenPainter1({int process}) : this.process = process;

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = (process >= 1) ? Colors.green : Colors.grey
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(5, 5) & Size(40, 5), paint1);
    Text("$process");
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter2 extends CustomPainter {
  // OpenPainter2(int process);
  int process;
  //this.process=process;
  OpenPainter2({int process}) : this.process = process;
  @override
  void paint(Canvas canvas, Size size) {
    var paint2 = Paint()
      ..color = (process >= 2) ? Colors.green : Colors.grey
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(55, 5) & Size(40, 5), paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter3 extends CustomPainter {
  // OpenPainter3(int process);
  int process;
  //this.process=process;
  OpenPainter3({int process}) : this.process = process;
  @override
  void paint(Canvas canvas, Size size) {
    var paint3 = Paint()
      ..color = (process >= 3) ? Colors.green : Colors.grey
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(105, 5) & Size(40, 5), paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
