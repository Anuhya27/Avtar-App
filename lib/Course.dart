import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  //Course(String name, {Key key, this.title}) : super(key: key);
  final String name;
  Course({String name}) : this.name = name;

  //final String name;
  @override
  _CoursePage createState() => _CoursePage(name);
}

class _CoursePage extends State<Course> {
  _CoursePage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          name,
          //textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(40, 40, 40, 1),
            fontWeight: FontWeight.w600,
            fontSize: 20,
            //lineheight: 29;
          ),
        ),
        backgroundColor: Color(0xE5E5E5),
      ),
    );
  }
}
