import 'package:flutter/material.dart';
import 'package:rounded_letter/rounded_letter.dart';
import 'package:avtar_app/courses.dart';
import 'package:avtar_app/painter.dart';
import 'package:avtar_app/Course.dart';
import 'dart:math' as math;

import 'package:rounded_letter/shape_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //theme: ThemeData.dark(),

      home: MyHomePage(title: 'Lessons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*
  bool _saved = false;
  final _kTabPages = <Widget>[
    Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.black)),
    Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.black)),
    Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
    Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
    Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
    Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
    //Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
    //Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
  ];
  */
  final _kTabs = <Tab>[
    Tab(
        child: Row(children: <Widget>[
      Text("Design       "),
      Icon(Icons.lens_rounded, size: 8, color: Colors.grey),
    ])),
    Tab(
        child: Row(children: <Widget>[
      Text('Environment       '),
      Icon(Icons.lens_rounded, size: 8, color: Colors.grey),
    ])),
    //Icon(Icons.lens_rounded, size: 10),
    Tab(
        child: Row(children: <Widget>[
      Text('Technology       '),
      Icon(Icons.lens_rounded, size: 8, color: Colors.grey),
    ])),
    Tab(
        child: Row(children: <Widget>[
      Text('Fashion       '),
      Icon(Icons.lens_rounded, size: 8, color: Colors.grey),
    ])),
    Tab(
        child: Row(children: <Widget>[
      Text('Research       '),
      Icon(Icons.lens_rounded, size: 8, color: Colors.grey),
    ])),
    Tab(
        child: Row(children: <Widget>[
      Text('Coding       '),
      Icon(Icons.lens_rounded, size: 8, color: Colors.grey),
    ])),
    //Tab(text: 'Swift'),
    //Tab(text: 'Rowshop'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
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
            widget.title,
            //textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(40, 40, 40, 1),
              fontWeight: FontWeight.w600,
              fontSize: 20,
              //lineheight: 29;
            ),
          ),
          actions: [
            RoundedLetter(
              text: "10",
              shapeType: ShapeType.circle,
              fontColor: Colors.white,
              shapeColor: Colors.yellow,
              shapeSize: 40,
              fontSize: 20,
              borderWidth: 2,
              borderColor: Colors.yellow[200],
            ),
          ],
          backgroundColor: Color(0xE5E5E5),

          bottom: TabBar(
            //isScrollable: true,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            indicatorColor: Color.fromRGBO(99, 11, 255, 1),
            indicatorPadding: EdgeInsets.only(left: 20.0, right: 32.0),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 2.0,
                ),
                insets: EdgeInsets.symmetric(horizontal: 2.0)),
            isScrollable: true,
            tabs: _kTabs,
          ),
          //textTheme: Colors.black26,
        ),
        /*
        body: TabBarView(
          children: _kTabPages,
        ),
        */
        body: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int index) {
            final course = courses[index];
            return Container(
              child: Row(
                children: [
                  Card(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Course(name: course.name)));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 15, right: 5, top: 10, bottom: 10),
                          height: 54,
                          child: Row(children: [
                            Container(
                              width: 49.27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(course.imageUrl),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 260.0,
                              margin: EdgeInsets.only(top: 3, bottom: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(course.name,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontFamily: 'SoleilW01-SemiBold',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      )
                                      //SoleilW01-SemiBold
                                      ),
                                  Text(course.description,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontFamily: 'SoleilW01-Regular',
                                        fontSize: 12,
                                      )
                                      //SoleilW01-SemiBold
                                      ),
                                  Row(
                                    children: [
                                      CustomPaint(
                                        painter: OpenPainter1(
                                            process: course.process),
                                      ),
                                      CustomPaint(
                                        painter: OpenPainter2(
                                            process: course.process),
                                      ),
                                      CustomPaint(
                                        painter: OpenPainter3(
                                            process: course.process),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment(-1.0, -1.0),
                              child: IconButton(
                                  icon: course.bookmarks
                                      ? Icon(Icons.bookmark_sharp)
                                      : Icon(Icons.bookmark_outline_sharp),
                                  //color: course.bookmarks ? Colors.yellow[500] : null,
                                  onPressed: () {
                                    setState(() {
                                      if (course.bookmarks) {
                                        course.bookmarks = false;
                                      } else {
                                        course.bookmarks = true;
                                      }
                                    });
                                  }),
                            ),
                          ]),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          left: 5, right: 20, top: 20, bottom: 10),
                      alignment: Alignment(1.0, 0.0),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        //child: Icon(Icons.rotate_left, size: 100,),
                        child: IconButton(
                            icon: course.bookmarks
                                ? Icon(Icons.lock_rounded)
                                : Icon(Icons.lock_open_outlined),
                            color: course.bookmarks
                                ? Colors.grey[400]
                                : Colors.grey[300],
                            onPressed: null),
                      ))
                ],
              ),
            );
          },
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
