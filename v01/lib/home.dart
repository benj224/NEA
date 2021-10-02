import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(key: UniqueKey())
    );
  }
}

class Home extends StatelessWidget {
  Home({
    required Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 59.0, start: 20.0),
            Pin(size: 59.0, start: 76.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 2.0, color: const Color(0xffade6fe)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 49.0, start: 25.0),
            Pin(size: 49.0, start: 81.0),
            child:
                // Adobe XD layer: '1921189_12754499427…' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 83.0, middle: 0.3562),
            Pin(size: 15.0, start: 93.0),
            child: Text(
              'Hello, Ben',
              style: TextStyle(
                fontFamily: 'Moon',
                fontSize: 14,
                color: const Color(0xff223e6d),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 39.0, start: 23.0),
            Pin(size: 11.0, middle: 0.2022),
            child: Text(
              'Level 4',
              style: TextStyle(
                fontFamily: 'Moon',
                fontSize: 11,
                color: const Color(0xff98a6be),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 62.0, start: 20.0),
            Pin(size: 20.0, middle: 0.2715),
            child: Text(
              'Packs',
              style: TextStyle(
                fontFamily: 'Moon',
                fontSize: 19,
                color: const Color(0xff223e6d),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, start: 17.0),
            Pin(size: 20.0, middle: 0.5644),
            child: Text(
              'Challanges',
              style: TextStyle(
                fontFamily: 'Moon',
                fontSize: 19,
                color: const Color(0xff223e6d),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 226.0, start: 23.5),
            Pin(size: 0.0, middle: 0.2346),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: -1.0),
                  child: SvgPicture.string(
                    _svg_ulgze,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 113.0, start: 0.0),
                  Pin(start: 0.0, end: -1.0),
                  child: SvgPicture.string(
                    _svg_fy3av1,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 166.0, start: 17.0),
            Pin(size: 166.0, middle: 0.7647),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x21465883),
                          offset: Offset(0, 0),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 63.0, start: 21.0),
                  Pin(size: 15.0, middle: 0.5894),
                  child: Text(
                    'Long Days 1',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular A',
                      fontSize: 11,
                      color: const Color(0xff223e6d),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.0, end: 23.1),
                  Pin(size: 7.9, middle: 0.8348),
                  child: SvgPicture.string(
                    _svg_z7vvea,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.1, start: 20.9),
                  Pin(size: 43.1, start: 23.1),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 18.0, middle: 0.5225),
                        Pin(size: 12.0, middle: 0.5096),
                        child:
                            // Adobe XD layer: 'Pie Chart' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Text(
                                '50%',
                                style: TextStyle(
                                  fontFamily: 'Euclid Circular A',
                                  fontSize: 9,
                                  color: const Color(0xff367be2),
                                  fontWeight: FontWeight.w700,
                                  height: 1.5555555555555556,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_x9n31p,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 35.5, end: 0.0),
                              Pin(start: 0.0, end: 3.5),
                              child: SvgPicture.string(
                                _svg_k4o0b,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 166.0, end: 15.0),
            Pin(size: 166.0, middle: 0.7647),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x21465883),
                          offset: Offset(0, 0),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 82.0, start: 21.0),
                  Pin(size: 15.0, middle: 0.5894),
                  child: Text(
                    'Put In The Time',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular A',
                      fontSize: 11,
                      color: const Color(0xff223e6d),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.1, start: 20.9),
                  Pin(size: 43.1, start: 23.1),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 18.0, middle: 0.5225),
                        Pin(size: 12.0, middle: 0.5096),
                        child:
                            // Adobe XD layer: 'Pie Chart' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Text(
                                '20%',
                                style: TextStyle(
                                  fontFamily: 'Euclid Circular A',
                                  fontSize: 9,
                                  color: const Color(0xff367be2),
                                  fontWeight: FontWeight.w700,
                                  height: 1.5555555555555556,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_x9n31p,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 35.5, end: 0.0),
                              Pin(start: 0.0, end: 3.5),
                              child: SvgPicture.string(
                                _svg_k4o0b,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 118.6, start: 20.9),
                  Pin(size: 7.9, middle: 0.8348),
                  child: SvgPicture.string(
                    _svg_vkg77b,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 70.0, end: 15.0),
            Pin(size: 70.0, end: 13.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff367be2),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 28.0, middle: 0.5119),
                  Pin(size: 28.0, middle: 0.5119),
                  child: SvgPicture.string(
                    _svg_clp5mw,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 70.0, start: 18.0),
            Pin(size: 70.0, end: 12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff367be2),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 0.0),
            Pin(size: 172.0, middle: 0.3813),
            child: Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 393.0,
                  height: 172.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 119.0, start: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: const Color(0xffe1e1e1),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 54.0, middle: 0.5077),
                                    Pin(size: 16.0, middle: 0.1795),
                                    child: Text(
                                      'Pack 1',
                                      style: TextStyle(
                                        fontFamily: 'Moon',
                                        fontSize: 16,
                                        color: const Color(0xff223e6d),
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 50.0, middle: 0.5072),
                                    Pin(size: 10.0, middle: 0.4136),
                                    child: Scrollbar(
                                      child: SingleChildScrollView(
                                        child: Text(
                                          'Physics',
                                          style: TextStyle(
                                            fontFamily: 'Moon',
                                            fontSize: 12,
                                            color: const Color(0xff223e6d),
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 36.0, end: 10.0),
                                    Pin(size: 36.0, end: 15.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xff367be2),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 20.0, middle: 0.8182),
                                    Pin(size: 6.0, middle: 0.7892),
                                    child: Scrollbar(
                                      child: SingleChildScrollView(
                                        child: Text(
                                          'ON',
                                          style: TextStyle(
                                            fontFamily: 'Moon',
                                            fontSize: 12,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 36.0, start: 10.0),
                                    Pin(size: 36.0, end: 15.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xff367be2),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 19.1, middle: 0.1802),
                              Pin(size: 20.0, end: 23.0),
                              child:
                                  // Adobe XD layer: 'icons8-settings' (shape)
                                  SvgPicture.string(
                                _svg_l7mu1f,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 119.0, middle: 0.5756),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: const Color(0xffe1e1e1),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 54.0, middle: 0.5077),
                                    Pin(size: 16.0, middle: 0.1795),
                                    child: Text(
                                      'Pack 1',
                                      style: TextStyle(
                                        fontFamily: 'Moon',
                                        fontSize: 16,
                                        color: const Color(0xff223e6d),
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 50.0, middle: 0.5072),
                                    Pin(size: 10.0, middle: 0.4136),
                                    child: Scrollbar(
                                      child: SingleChildScrollView(
                                        child: Text(
                                          'Physics',
                                          style: TextStyle(
                                            fontFamily: 'Moon',
                                            fontSize: 12,
                                            color: const Color(0xff223e6d),
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 36.0, end: 10.0),
                                    Pin(size: 36.0, end: 15.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xff367be2),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 20.0, middle: 0.8182),
                                    Pin(size: 6.0, middle: 0.7892),
                                    child: Scrollbar(
                                      child: SingleChildScrollView(
                                        child: Text(
                                          'ON',
                                          style: TextStyle(
                                            fontFamily: 'Moon',
                                            fontSize: 12,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 36.0, start: 10.0),
                                    Pin(size: 36.0, end: 15.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xff367be2),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 19.1, middle: 0.1802),
                              Pin(size: 20.0, end: 23.0),
                              child:
                                  // Adobe XD layer: 'icons8-settings' (shape)
                                  SvgPicture.string(
                                _svg_l7mu1f,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 119.0, end: -36.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: const Color(0xffe1e1e1),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 54.0, middle: 0.5077),
                                    Pin(size: 16.0, middle: 0.1795),
                                    child: Text(
                                      'Pack 1',
                                      style: TextStyle(
                                        fontFamily: 'Moon',
                                        fontSize: 16,
                                        color: const Color(0xff223e6d),
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 50.0, middle: 0.5072),
                                    Pin(size: 10.0, middle: 0.4136),
                                    child: Scrollbar(
                                      child: SingleChildScrollView(
                                        child: Text(
                                          'Physics',
                                          style: TextStyle(
                                            fontFamily: 'Moon',
                                            fontSize: 12,
                                            color: const Color(0xff223e6d),
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 36.0, end: 10.0),
                                    Pin(size: 36.0, end: 15.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xff367be2),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 20.0, middle: 0.8182),
                                    Pin(size: 6.0, middle: 0.7892),
                                    child: Scrollbar(
                                      child: SingleChildScrollView(
                                        child: Text(
                                          'ON',
                                          style: TextStyle(
                                            fontFamily: 'Moon',
                                            fontSize: 12,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 36.0, start: 10.0),
                                    Pin(size: 36.0, end: 15.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xff367be2),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 19.1, middle: 0.1802),
                              Pin(size: 20.0, end: 23.0),
                              child:
                                  // Adobe XD layer: 'icons8-settings' (shape)
                                  SvgPicture.string(
                                _svg_l7mu1f,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 41.0, start: 33.0),
            Pin(size: 35.3, end: 30.4),
            child:
                // Adobe XD layer: 'icons8-folder' (shape)
                SvgPicture.string(
              _svg_fp7nz,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ulgze =
    '<svg viewBox="23.5 217.5 226.0 1.0" ><path transform="translate(23.5, 217.5)" d="M 0 0 L 226 0" fill="none" stroke="#efefef" stroke-width="6" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_fy3av1 =
    '<svg viewBox="23.5 217.5 113.0 1.0" ><path transform="translate(23.5, 217.5)" d="M 0 0 L 113 0" fill="none" stroke="#ea7979" stroke-width="6" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_x9n31p =
    '<svg viewBox="0.0 0.0 43.1 43.1" ><path transform="translate(0.0, 142.0)" d="M 21.56636047363281 -98.86727905273438 C 9.655587196350098 -98.86727905273438 8.099426196395143e-08 -108.5228729248047 8.099426196395143e-08 -120.4336395263672 C 8.099426196395143e-08 -132.3444213867188 9.655587196350098 -142.0000152587891 21.56636047363281 -142.0000152587891 C 33.47712326049805 -142.0000152587891 43.13272094726562 -132.3444213867188 43.13272094726562 -120.4336395263672 C 43.13272094726562 -108.5228729248047 33.47712326049805 -98.86727905273438 21.56636047363281 -98.86727905273438 Z M 21.56636047363281 -101.9048004150391 C 31.79956436157227 -101.9048004150391 40.0952033996582 -110.2004547119141 40.0952033996582 -120.4336395263672 C 40.0952033996582 -130.6668548583984 31.79956436157227 -138.9624786376953 21.56636047363281 -138.9624786376953 C 11.33316135406494 -138.9624786376953 3.037515163421631 -130.6668548583984 3.037515163421631 -120.4336395263672 C 3.037515163421631 -110.2004547119141 11.33316135406494 -101.9048004150391 21.56636047363281 -101.9048004150391 Z" fill="#dcebf5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k4o0b =
    '<svg viewBox="7.6 0.0 35.5 39.7" ><path transform="translate(7.61, 0.0)" d="M 23.87026214599609 37.22201538085938 C 29.04791831970215 33.93613052368164 32.48439407348633 28.15247917175293 32.48439407348633 21.56625938415527 C 32.48439407348633 11.33308982849121 24.18871307373047 3.037409543991089 13.95554351806641 3.037409543991089 C 9.312392234802246 3.037409543991089 5.068436622619629 4.745038032531738 1.816988348960876 7.566856861114502 L -2.087222854421585e-17 5.123542785644531 C 3.761372089385986 1.928038120269775 8.633414268493652 0 13.95554351806641 0 C 25.8664665222168 0 35.52209091186523 9.65562629699707 35.52209091186523 21.56625938415527 C 35.52209091186523 29.15089416503906 31.6071662902832 35.82081604003906 25.6874885559082 39.6656494140625 L 23.87026214599609 37.22201538085938 Z" fill="#367be2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z7vvea =
    '<svg viewBox="39.0 626.0 120.9 7.9" ><path transform="translate(19.0, 1517.0)" d="M 137.2851104736328 -883.168212890625 L 137.2851104736328 -883.742431640625 C 137.4228057861328 -883.6956176757812 137.5496978759766 -883.6722412109375 137.6640014648438 -883.6722412109375 C 137.9871063232422 -883.6722412109375 138.2292022705078 -883.8648071289062 138.3903045654297 -884.25 L 138.7107086181641 -885.0078125 L 137.1483001708984 -889.000244140625 L 137.8592987060547 -889.000244140625 L 138.9411010742188 -885.9222412109375 C 138.9546051025391 -885.8826293945312 138.9815979003906 -885.7809448242188 139.0230102539062 -885.6171264648438 L 139.0473022460938 -885.6171264648438 C 139.0599060058594 -885.6801147460938 139.0859985351562 -885.7781982421875 139.1247100830078 -885.9141235351562 L 140.2613983154297 -889.000244140625 L 140.9255981445312 -889.000244140625 L 139.0859985351562 -884.3598022460938 C 138.7575073242188 -883.5309448242188 138.2967071533203 -883.116943359375 137.7026977539062 -883.116943359375 C 137.5362091064453 -883.116943359375 137.3966979980469 -883.134033203125 137.2851104736328 -883.168212890625 Z M 97.82009887695312 -883.3986206054688 L 97.82009887695312 -884.0394287109375 C 98.27100372314453 -883.7892456054688 98.70030212402344 -883.6641235351562 99.10980224609375 -883.6641235351562 C 100.093505859375 -883.6641235351562 100.5858001708984 -884.1879272460938 100.5858001708984 -885.234619140625 L 100.5858001708984 -885.6719970703125 L 100.5705032348633 -885.6719970703125 C 100.2654037475586 -885.1617431640625 99.80730438232422 -884.9061279296875 99.19530487060547 -884.9061279296875 C 98.69760131835938 -884.9061279296875 98.29710388183594 -885.0843505859375 97.99380493164062 -885.4398193359375 C 97.69050598144531 -885.7953491210938 97.53929901123047 -886.2723388671875 97.53929901123047 -886.870849609375 C 97.53929901123047 -887.5512084960938 97.70220184326172 -888.0912475585938 98.02890014648438 -888.4926147460938 C 98.35649871826172 -888.8931274414062 98.80380249023438 -889.0938110351562 99.37080383300781 -889.0938110351562 C 99.90990447998047 -889.0938110351562 100.3095016479492 -888.8778076171875 100.5705032348633 -888.4449462890625 L 100.5858001708984 -888.4449462890625 L 100.5858001708984 -889.000244140625 L 101.2266006469727 -889.000244140625 L 101.2266006469727 -885.3201293945312 C 101.2266006469727 -883.851318359375 100.5237045288086 -883.116943359375 99.11700439453125 -883.116943359375 C 98.62200164794922 -883.116943359375 98.19000244140625 -883.2105102539062 97.82009887695312 -883.3986206054688 Z M 98.53110504150391 -888.1227416992188 C 98.30699920654297 -887.8356323242188 98.19540405273438 -887.4324340820312 98.19540405273438 -886.9140014648438 C 98.19540405273438 -886.468505859375 98.30250549316406 -886.113037109375 98.51760101318359 -885.845703125 C 98.73270416259766 -885.5784301757812 99.01710510253906 -885.4452514648438 99.37080383300781 -885.4452514648438 C 99.73080444335938 -885.4452514648438 100.0223999023438 -885.572998046875 100.2482986450195 -885.8276977539062 C 100.4733047485352 -886.0833129882812 100.5858001708984 -886.4100341796875 100.5858001708984 -886.8087158203125 L 100.5858001708984 -887.398193359375 C 100.5858001708984 -887.7159423828125 100.4786987304688 -887.9886474609375 100.2636032104492 -888.2145385742188 C 100.0485000610352 -888.4413452148438 99.78120422363281 -888.5547485351562 99.46080017089844 -888.5547485351562 C 99.06480407714844 -888.5547485351562 98.75520324707031 -888.4107055664062 98.53110504150391 -888.1227416992188 Z M 38.89800262451172 -883.1600952148438 L 38.89800262451172 -889.000244140625 L 39.53879928588867 -889.000244140625 L 39.53879928588867 -888.2973022460938 L 39.55500030517578 -888.2973022460938 C 39.87000274658203 -888.8283081054688 40.3307991027832 -889.0938110351562 40.93740081787109 -889.0938110351562 C 41.45310211181641 -889.0938110351562 41.85540008544922 -888.9147338867188 42.14430236816406 -888.5565185546875 C 42.43320083618164 -888.1983032226562 42.57810211181641 -887.7186279296875 42.57810211181641 -887.117431640625 C 42.57810211181641 -886.4478149414062 42.41519927978516 -885.9122924804688 42.08940124511719 -885.510009765625 C 41.76449966430664 -885.1077270507812 41.31900024414062 -884.9061279296875 40.75379943847656 -884.9061279296875 C 40.23540115356445 -884.9061279296875 39.83580017089844 -885.1302490234375 39.55500030517578 -885.5784301757812 L 39.53879928588867 -885.5784301757812 L 39.53879928588867 -883.1600952148438 L 38.89800262451172 -883.1600952148438 Z M 39.87900161743164 -888.1658935546875 C 39.65220260620117 -887.90673828125 39.53879928588867 -887.5818481445312 39.53879928588867 -887.1912231445312 L 39.53879928588867 -886.6332397460938 C 39.53879928588867 -886.302001953125 39.64680099487305 -886.021240234375 39.86100006103516 -885.7908325195312 C 40.07609939575195 -885.5604248046875 40.34880065917969 -885.4452514648438 40.68000030517578 -885.4452514648438 C 41.06790161132812 -885.4452514648438 41.37210083007812 -885.59375 41.59170150756836 -885.8907470703125 C 41.81220245361328 -886.187744140625 41.92200088500977 -886.5999145507812 41.92200088500977 -887.129150390625 C 41.92200088500977 -887.5746459960938 41.81940078735352 -887.9229125976562 41.61330032348633 -888.1758422851562 C 41.40719985961914 -888.4287109375 41.12910079956055 -888.5547485351562 40.77720260620117 -888.5547485351562 C 40.40460205078125 -888.5547485351562 40.10580062866211 -888.4251098632812 39.87900161743164 -888.1658935546875 Z M 19.99979972839355 -887.4999389648438 C 19.99979972839355 -889.43310546875 21.56669998168945 -891 23.49990081787109 -891 C 25.4330997467041 -891 27 -889.43310546875 27 -887.4999389648438 C 27 -885.5667114257812 25.4330997467041 -883.9998168945312 23.49990081787109 -883.9998168945312 C 21.56669998168945 -883.9998168945312 19.99979972839355 -885.5667114257812 19.99979972839355 -887.4999389648438 Z M 133.7129974365234 -885.222900390625 C 133.4880065917969 -885.4335327148438 133.3746032714844 -885.7134399414062 133.3746032714844 -886.0626220703125 C 133.3746032714844 -886.8096313476562 133.814697265625 -887.2452392578125 134.6949005126953 -887.3676147460938 L 135.8946075439453 -887.5350341796875 C 135.8946075439453 -888.2145385742188 135.6201019287109 -888.5547485351562 135.0702056884766 -888.5547485351562 C 134.5886993408203 -888.5547485351562 134.1540069580078 -888.3909301757812 133.7651977539062 -888.0624389648438 L 133.7651977539062 -888.718505859375 C 134.1585083007812 -888.96875 134.6121063232422 -889.0938110351562 135.1251068115234 -889.0938110351562 C 136.064697265625 -889.0938110351562 136.535400390625 -888.5961303710938 136.535400390625 -887.6016235351562 L 136.535400390625 -884.9996948242188 L 135.8946075439453 -884.9996948242188 L 135.8946075439453 -885.625244140625 L 135.8793029785156 -885.625244140625 C 135.6002960205078 -885.1455078125 135.1899108886719 -884.9061279296875 134.6481018066406 -884.9061279296875 C 134.2503051757812 -884.9061279296875 133.9380035400391 -885.0114135742188 133.7129974365234 -885.222900390625 Z M 134.9298095703125 -886.890625 C 134.6327972412109 -886.8492431640625 134.4087066650391 -886.7754516601562 134.2575073242188 -886.6701049804688 C 134.1072082519531 -886.5648193359375 134.0316009521484 -886.3776245117188 134.0316009521484 -886.1094360351562 C 134.0316009521484 -885.9141235351562 134.1009063720703 -885.7548217773438 134.2404022216797 -885.630615234375 C 134.3798980712891 -885.50732421875 134.5653076171875 -885.4452514648438 134.7966003417969 -885.4452514648438 C 135.1143035888672 -885.4452514648438 135.3771057128906 -885.5568237304688 135.5841064453125 -885.7791137695312 C 135.7911071777344 -886.0023193359375 135.8946075439453 -886.2839965820312 135.8946075439453 -886.6251220703125 L 135.8946075439453 -887.0238037109375 L 134.9298095703125 -886.890625 Z M 129.1383056640625 -885.4434204101562 C 128.8377075195312 -885.8016357421875 128.6874084472656 -886.2894287109375 128.6874084472656 -886.9059448242188 C 128.6874084472656 -887.5674438476562 128.8538970947266 -888.0975341796875 129.1878051757812 -888.4962158203125 C 129.5207977294922 -888.8948974609375 129.9645080566406 -889.0938110351562 130.5198059082031 -889.0938110351562 C 131.0688018798828 -889.0938110351562 131.4683990478516 -888.8778076171875 131.7185974121094 -888.4449462890625 L 131.7348022460938 -888.4449462890625 L 131.7348022460938 -890.9216918945312 L 132.3747100830078 -890.9216918945312 L 132.3747100830078 -884.9996948242188 L 131.7348022460938 -884.9996948242188 L 131.7348022460938 -885.6801147460938 L 131.7185974121094 -885.6801147460938 C 131.4216003417969 -885.1644287109375 130.9635009765625 -884.9061279296875 130.3433990478516 -884.9061279296875 C 129.8412017822266 -884.9061279296875 129.4398040771484 -885.085205078125 129.1383056640625 -885.4434204101562 Z M 129.6800994873047 -888.1254272460938 C 129.4560089111328 -887.8383178710938 129.343505859375 -887.4423217773438 129.343505859375 -886.9374389648438 C 129.343505859375 -886.4766235351562 129.4515075683594 -886.113037109375 129.6657104492188 -885.845703125 C 129.8807983398438 -885.5784301757812 130.1697082519531 -885.4452514648438 130.5315093994141 -885.4452514648438 C 130.8879089355469 -885.4452514648438 131.1777038574219 -885.5739135742188 131.4000091552734 -885.8322143554688 C 131.6231994628906 -886.089599609375 131.7348022460938 -886.4154052734375 131.7348022460938 -886.8087158203125 L 131.7348022460938 -887.398193359375 C 131.7348022460938 -887.7213134765625 131.6277008056641 -887.9949340820312 131.4143981933594 -888.218994140625 C 131.2002105712891 -888.443115234375 130.9293060302734 -888.5547485351562 130.6016998291016 -888.5547485351562 C 130.2111053466797 -888.5547485351562 129.9033050537109 -888.41162109375 129.6800994873047 -888.1254272460938 Z M 122.7969055175781 -885.4515380859375 C 122.4738006591797 -885.814208984375 122.3127059936523 -886.325439453125 122.3127059936523 -886.9841918945312 C 122.3127059936523 -887.6069946289062 122.4891052246094 -888.1137084960938 122.8419036865234 -888.506103515625 C 123.1947021484375 -888.8976440429688 123.6330032348633 -889.0938110351562 124.1559066772461 -889.0938110351562 C 124.6797027587891 -889.0938110351562 125.0847015380859 -888.9246215820312 125.3709030151367 -888.5862426757812 C 125.6580047607422 -888.247802734375 125.8011016845703 -887.777099609375 125.8011016845703 -887.1759033203125 L 125.8011016845703 -886.8402099609375 L 122.9769058227539 -886.8402099609375 C 122.9868011474609 -886.3947143554688 123.1065063476562 -886.0509033203125 123.3360061645508 -885.808837890625 C 123.5655059814453 -885.5667114257812 123.880500793457 -885.4452514648438 124.281005859375 -885.4452514648438 C 124.7319030761719 -885.4452514648438 125.1459045410156 -885.59375 125.5230026245117 -885.8907470703125 L 125.5230026245117 -885.2886352539062 C 125.172004699707 -885.033935546875 124.7067031860352 -884.9061279296875 124.12890625 -884.9061279296875 C 123.5637054443359 -884.9061279296875 123.120002746582 -885.0879516601562 122.7969055175781 -885.4515380859375 Z M 123.3747024536133 -888.230712890625 C 123.1641006469727 -888.0147094726562 123.0335998535156 -887.7321166992188 122.9841003417969 -887.3829345703125 L 125.1441040039062 -887.3829345703125 C 125.1423034667969 -887.7528076171875 125.0522994995117 -888.0399169921875 124.8768005371094 -888.2460327148438 C 124.701301574707 -888.4521484375 124.457405090332 -888.5547485351562 124.1442031860352 -888.5547485351562 C 123.8427047729492 -888.5547485351562 123.5862045288086 -888.4467163085938 123.3747024536133 -888.230712890625 Z M 113.6268005371094 -885.466796875 C 113.2740020751953 -885.84033203125 113.0976028442383 -886.3362426757812 113.0976028442383 -886.9526977539062 C 113.0976028442383 -887.625 113.2812042236328 -888.1497192382812 113.6483993530273 -888.5277099609375 C 114.0156021118164 -888.9048461914062 114.5115051269531 -889.0938110351562 115.1370010375977 -889.0938110351562 C 115.7328033447266 -889.0938110351562 116.1990051269531 -888.9102172851562 116.5329055786133 -888.5430297851562 C 116.8677062988281 -888.1758422851562 117.0351028442383 -887.6664428710938 117.0351028442383 -887.0157470703125 C 117.0351028442383 -886.3776245117188 116.8551025390625 -885.8663940429688 116.4942016601562 -885.4821166992188 C 116.13330078125 -885.0986938476562 115.6500015258789 -884.9061279296875 115.0434036254883 -884.9061279296875 C 114.4521026611328 -884.9061279296875 113.9795989990234 -885.0933227539062 113.6268005371094 -885.466796875 Z M 114.1137008666992 -888.1343994140625 C 113.873405456543 -887.8544921875 113.7537002563477 -887.4684448242188 113.7537002563477 -886.9761352539062 C 113.7537002563477 -886.5027465820312 113.8752059936523 -886.1292114257812 114.117301940918 -885.8556518554688 C 114.3594055175781 -885.58203125 114.6834030151367 -885.4452514648438 115.090202331543 -885.4452514648438 C 115.5042037963867 -885.4452514648438 115.8218994140625 -885.579345703125 116.0451049804688 -885.8475341796875 C 116.2674026489258 -886.11572265625 116.3790054321289 -886.497314453125 116.3790054321289 -886.9923095703125 C 116.3790054321289 -887.4918212890625 116.2674026489258 -887.8779296875 116.0451049804688 -888.1488037109375 C 115.8218994140625 -888.4188232421875 115.5042037963867 -888.5547485351562 115.090202331543 -888.5547485351562 C 114.6780014038086 -888.5547485351562 114.3531036376953 -888.414306640625 114.1137008666992 -888.1343994140625 Z M 87.7113037109375 -885.1445922851562 L 87.7113037109375 -885.8322143554688 C 88.05960083007812 -885.5739135742188 88.44390106201172 -885.4452514648438 88.86330413818359 -885.4452514648438 C 89.42580413818359 -885.4452514648438 89.70660400390625 -885.6324462890625 89.70660400390625 -886.0077514648438 C 89.70660400390625 -886.1148071289062 89.68320465087891 -886.204833984375 89.63460540771484 -886.279541015625 C 89.58689880371094 -886.3533325195312 89.52120208740234 -886.4190063476562 89.43930053710938 -886.4766235351562 C 89.35739898681641 -886.5342407226562 89.26110076904297 -886.5855102539062 89.15040588378906 -886.6304931640625 C 89.03970336914062 -886.6763916015625 88.9208984375 -886.72412109375 88.79309844970703 -886.7736206054688 C 88.61579895019531 -886.8438110351562 88.46010589599609 -886.9149169921875 88.32600402832031 -886.9860229492188 C 88.19190216064453 -887.0580444335938 88.08029937744141 -887.1390380859375 87.99030303955078 -887.2281494140625 C 87.90029907226562 -887.318115234375 87.83280181884766 -887.4207153320312 87.78690338134766 -887.5350341796875 C 87.74190521240234 -887.6492919921875 87.718505859375 -887.7843017578125 87.718505859375 -887.9373168945312 C 87.718505859375 -888.1254272460938 87.76170349121094 -888.291015625 87.84809875488281 -888.4359130859375 C 87.93360137939453 -888.5798950195312 88.04790496826172 -888.701416015625 88.19100189208984 -888.7986450195312 C 88.33499908447266 -888.896728515625 88.49790191650391 -888.9696044921875 88.68150329589844 -889.0191040039062 C 88.86510467529297 -889.068603515625 89.05500030517578 -889.0938110351562 89.25030517578125 -889.0938110351562 C 89.5968017578125 -889.0938110351562 89.90640258789062 -889.0335083007812 90.18000030517578 -888.913818359375 L 90.18000030517578 -888.2658081054688 C 89.88570404052734 -888.4584350585938 89.54730224609375 -888.5547485351562 89.16390228271484 -888.5547485351562 C 89.04420471191406 -888.5547485351562 88.93620300292969 -888.5411987304688 88.83990478515625 -888.5133056640625 C 88.74359893798828 -888.486328125 88.66080474853516 -888.4476318359375 88.59149932861328 -888.3981323242188 C 88.52310180664062 -888.3486328125 88.46910095214844 -888.2901000976562 88.43130493164062 -888.2208251953125 C 88.39350128173828 -888.1515502929688 88.37460327148438 -888.075927734375 88.37460327148438 -887.9922485351562 C 88.37460327148438 -887.8878173828125 88.39350128173828 -887.800537109375 88.43130493164062 -887.7303466796875 C 88.46910095214844 -887.6600952148438 88.52490234375 -887.5980224609375 88.59780120849609 -887.5431518554688 C 88.67070007324219 -887.4882202148438 88.75890350341797 -887.438720703125 88.86330413818359 -887.3945922851562 C 88.96770477294922 -887.3505249023438 89.08560180664062 -887.3019409179688 89.21880340576172 -887.2496948242188 C 89.39610290527344 -887.1822509765625 89.55450439453125 -887.1129150390625 89.69490051269531 -887.0408935546875 C 89.83620452880859 -886.9698486328125 89.95590209960938 -886.8887939453125 90.05490112304688 -886.798828125 C 90.15390014648438 -886.7088012695312 90.22949981689453 -886.6053466796875 90.28350067138672 -886.4883422851562 C 90.33660125732422 -886.371337890625 90.36360168457031 -886.2318115234375 90.36360168457031 -886.0707397460938 C 90.36360168457031 -885.8727416992188 90.31950378417969 -885.7008056640625 90.23220062255859 -885.5549926757812 C 90.14490509033203 -885.4092407226562 90.02880096435547 -885.2877197265625 89.88300323486328 -885.19140625 C 89.73720550537109 -885.0950927734375 89.56890106201172 -885.0231323242188 89.37900543212891 -884.976318359375 C 89.18910217285156 -884.9295043945312 88.98930358886719 -884.9061279296875 88.78140258789062 -884.9061279296875 C 88.37010192871094 -884.9061279296875 88.01280212402344 -884.9853515625 87.7113037109375 -885.1445922851562 Z M 78.21089935302734 -885.4515380859375 C 77.88780212402344 -885.814208984375 77.72669982910156 -886.325439453125 77.72669982910156 -886.9841918945312 C 77.72669982910156 -887.6069946289062 77.90309906005859 -888.1137084960938 78.25590515136719 -888.506103515625 C 78.60870361328125 -888.8976440429688 79.04700469970703 -889.0938110351562 79.56990051269531 -889.0938110351562 C 80.09370422363281 -889.0938110351562 80.49870300292969 -888.9246215820312 80.78490447998047 -888.5862426757812 C 81.07199859619141 -888.247802734375 81.21510314941406 -887.777099609375 81.21510314941406 -887.1759033203125 L 81.21510314941406 -886.8402099609375 L 78.39089965820312 -886.8402099609375 C 78.40080261230469 -886.3947143554688 78.52050018310547 -886.0509033203125 78.75 -885.808837890625 C 78.97949981689453 -885.5667114257812 79.29450225830078 -885.4452514648438 79.69499969482422 -885.4452514648438 C 80.14590454101562 -885.4452514648438 80.55989837646484 -885.59375 80.93790435791016 -885.8907470703125 L 80.93790435791016 -885.2886352539062 C 80.58599853515625 -885.033935546875 80.12070465087891 -884.9061279296875 79.54290008544922 -884.9061279296875 C 78.97769927978516 -884.9061279296875 78.53400421142578 -885.0879516601562 78.21089935302734 -885.4515380859375 Z M 78.78870391845703 -888.230712890625 C 78.57810211181641 -888.0147094726562 78.44760131835938 -887.7321166992188 78.39810180664062 -887.3829345703125 L 80.55900573730469 -887.3829345703125 C 80.55630493164062 -887.7528076171875 80.46720123291016 -888.0399169921875 80.29080200195312 -888.2460327148438 C 80.11530303955078 -888.4521484375 79.87139892578125 -888.5547485351562 79.55820465087891 -888.5547485351562 C 79.25669860839844 -888.5547485351562 79.00019836425781 -888.4467163085938 78.78870391845703 -888.230712890625 Z M 52.48979949951172 -885.4434204101562 C 52.18920135498047 -885.8016357421875 52.03890228271484 -886.2894287109375 52.03890228271484 -886.9059448242188 C 52.03890228271484 -887.5674438476562 52.20540237426758 -888.0975341796875 52.53930282592773 -888.4962158203125 C 52.8723030090332 -888.8948974609375 53.31600189208984 -889.0938110351562 53.87129974365234 -889.0938110351562 C 54.4202995300293 -889.0938110351562 54.81990051269531 -888.8778076171875 55.07010269165039 -888.4449462890625 L 55.08629989624023 -888.4449462890625 L 55.08629989624023 -890.9216918945312 L 55.72620010375977 -890.9216918945312 L 55.72620010375977 -884.9996948242188 L 55.08629989624023 -884.9996948242188 L 55.08629989624023 -885.6801147460938 L 55.07010269165039 -885.6801147460938 C 54.77310180664062 -885.1644287109375 54.31500244140625 -884.9061279296875 53.69490051269531 -884.9061279296875 C 53.19269943237305 -884.9061279296875 52.79130172729492 -885.085205078125 52.48979949951172 -885.4434204101562 Z M 53.03160095214844 -888.1254272460938 C 52.80750274658203 -887.8383178710938 52.69499969482422 -887.4423217773438 52.69499969482422 -886.9374389648438 C 52.69499969482422 -886.4766235351562 52.80300140380859 -886.113037109375 53.0172004699707 -885.845703125 C 53.2322998046875 -885.5784301757812 53.52120208740234 -885.4452514648438 53.88299942016602 -885.4452514648438 C 54.23940277099609 -885.4452514648438 54.52920150756836 -885.5739135742188 54.75239944458008 -885.8322143554688 C 54.97470092773438 -886.089599609375 55.08629989624023 -886.4154052734375 55.08629989624023 -886.8087158203125 L 55.08629989624023 -887.398193359375 C 55.08629989624023 -887.7213134765625 54.97920227050781 -887.9949340820312 54.76589965820312 -888.218994140625 C 54.55170059204102 -888.443115234375 54.28079986572266 -888.5547485351562 53.95320129394531 -888.5547485351562 C 53.56260299682617 -888.5547485351562 53.25480270385742 -888.41162109375 53.03160095214844 -888.1254272460938 Z M 43.81290054321289 -885.4515380859375 C 43.48979949951172 -885.814208984375 43.32780075073242 -886.325439453125 43.32780075073242 -886.9841918945312 C 43.32780075073242 -887.6069946289062 43.50419998168945 -888.1137084960938 43.85700225830078 -888.506103515625 C 44.21070098876953 -888.8976440429688 44.64810180664062 -889.0938110351562 45.17190170288086 -889.0938110351562 C 45.69570159912109 -889.0938110351562 46.10070037841797 -888.9246215820312 46.38690185546875 -888.5862426757812 C 46.67309951782227 -888.247802734375 46.81620025634766 -887.777099609375 46.81620025634766 -887.1759033203125 L 46.81620025634766 -886.8402099609375 L 43.99200057983398 -886.8402099609375 C 44.00279998779297 -886.3947143554688 44.12250137329102 -886.0509033203125 44.35200119018555 -885.808837890625 C 44.58060073852539 -885.5667114257812 44.89559936523438 -885.4452514648438 45.29700088500977 -885.4452514648438 C 45.74700164794922 -885.4452514648438 46.16189956665039 -885.59375 46.53900146484375 -885.8907470703125 L 46.53900146484375 -885.2886352539062 C 46.18709945678711 -885.033935546875 45.72270202636719 -884.9061279296875 45.14490127563477 -884.9061279296875 C 44.5797004699707 -884.9061279296875 44.13510131835938 -885.0879516601562 43.81290054321289 -885.4515380859375 Z M 44.39070129394531 -888.230712890625 C 44.18009948730469 -888.0147094726562 44.04960250854492 -887.7321166992188 44.00009918212891 -887.3829345703125 L 46.16010284423828 -887.3829345703125 C 46.15740203857422 -887.7528076171875 46.06830215454102 -888.0399169921875 45.89279937744141 -888.2460327148438 C 45.71640014648438 -888.4521484375 45.47249984741211 -888.5547485351562 45.16020202636719 -888.5547485351562 C 44.8577995300293 -888.5547485351562 44.60129928588867 -888.4467163085938 44.39070129394531 -888.230712890625 Z M 35.54730224609375 -884.927734375 C 35.41680145263672 -884.942138671875 35.28359985351562 -884.9628295898438 35.14860153198242 -884.9898071289062 C 35.01269912719727 -885.0177001953125 34.8848991394043 -885.051025390625 34.76340103149414 -885.0914916992188 C 34.64279937744141 -885.1320190429688 34.54560089111328 -885.177001953125 34.47270202636719 -885.2265014648438 L 34.47270202636719 -885.9996337890625 C 34.5609016418457 -885.9222412109375 34.66709899902344 -885.8511352539062 34.79130172729492 -885.7890014648438 C 34.91460037231445 -885.7269287109375 35.04510116577148 -885.673828125 35.18190002441406 -885.630615234375 C 35.31870269775391 -885.5883178710938 35.45550155639648 -885.5549926757812 35.59410095214844 -885.5316162109375 C 35.7318000793457 -885.5082397460938 35.85960006713867 -885.4965209960938 35.97660064697266 -885.4965209960938 C 36.37980270385742 -885.4965209960938 36.68130111694336 -885.5712280273438 36.88109970092773 -885.7206420898438 C 37.08000183105469 -885.8699951171875 37.17990112304688 -886.0859985351562 37.17990112304688 -886.3668212890625 C 37.17990112304688 -886.5180053710938 37.14660263061523 -886.6494140625 37.08000183105469 -886.7619018554688 C 37.01340103149414 -886.87353515625 36.92160034179688 -886.9761352539062 36.80459976196289 -887.0679321289062 C 36.68759918212891 -887.16064453125 36.54899978637695 -887.2496948242188 36.38880157470703 -887.3343505859375 C 36.22859954833984 -887.4189453125 36.05580139160156 -887.5079956054688 35.87129974365234 -887.6016235351562 C 35.67600250244141 -887.7006225585938 35.49330139160156 -887.800537109375 35.32410049438477 -887.9022216796875 C 35.15489959716797 -888.00390625 35.00820159912109 -888.1155395507812 34.88310241699219 -888.2379150390625 C 34.75799942016602 -888.3603515625 34.6599006652832 -888.4989013671875 34.5879020690918 -888.6546020507812 C 34.51589965820312 -888.8094482421875 34.48080062866211 -888.9912109375 34.48080062866211 -889.1990966796875 C 34.48080062866211 -889.4547119140625 34.53660202026367 -889.6761474609375 34.64820098876953 -889.8651123046875 C 34.76070022583008 -890.0541381835938 34.90740203857422 -890.2098388671875 35.0900993347168 -890.3322143554688 C 35.27190017700195 -890.4546508789062 35.47980117797852 -890.5455322265625 35.7129020690918 -890.6058349609375 C 35.94599914550781 -890.6652221679688 36.18360137939453 -890.6949462890625 36.42570114135742 -890.6949462890625 C 36.97830200195312 -890.6949462890625 37.38059997558594 -890.6292114257812 37.63260269165039 -890.4960327148438 L 37.63260269165039 -889.7579956054688 C 37.30229949951172 -889.9866333007812 36.87750244140625 -890.101806640625 36.35910034179688 -890.101806640625 C 36.21599960327148 -890.101806640625 36.07290267944336 -890.0865478515625 35.92980194091797 -890.0568237304688 C 35.78670120239258 -890.027099609375 35.65890121459961 -889.9776000976562 35.54730224609375 -889.9100952148438 C 35.43479919433594 -889.8426513671875 35.34390258789062 -889.7553100585938 35.27370071411133 -889.648193359375 C 35.2035026550293 -889.5419921875 35.16839981079102 -889.4114990234375 35.16839981079102 -889.2576293945312 C 35.16839981079102 -889.114501953125 35.19449996948242 -888.9912109375 35.24760055541992 -888.8868408203125 C 35.30160140991211 -888.7824096679688 35.37990188598633 -888.6879272460938 35.48430252075195 -888.6015014648438 C 35.58869934082031 -888.5159912109375 35.71559906005859 -888.4323120117188 35.8650016784668 -888.351318359375 C 36.01530075073242 -888.271240234375 36.18720245361328 -888.18212890625 36.38249969482422 -888.0858154296875 C 36.58320236206055 -887.98681640625 36.77310180664062 -887.8824462890625 36.95310211181641 -887.7734985351562 C 37.13310241699219 -887.6636962890625 37.29059982299805 -887.5431518554688 37.42560195922852 -887.409912109375 C 37.56150054931641 -887.2776489257812 37.66860198974609 -887.1300048828125 37.747802734375 -886.9689331054688 C 37.82789993286133 -886.8069458007812 37.86750030517578 -886.6224365234375 37.86750030517578 -886.4136352539062 C 37.86750030517578 -886.1382446289062 37.81349945068359 -885.9042358398438 37.70550155639648 -885.7125244140625 C 37.59659957885742 -885.521728515625 37.45080184936523 -885.3660278320312 37.2672004699707 -885.246337890625 C 37.08359909057617 -885.1266479492188 36.87210083007812 -885.039306640625 36.6327018737793 -884.9862060546875 C 36.3932991027832 -884.93310546875 36.14039993286133 -884.9061279296875 35.87490081787109 -884.9061279296875 C 35.78670120239258 -884.9061279296875 35.67690277099609 -884.913330078125 35.54730224609375 -884.927734375 Z M 120.7386016845703 -884.9996948242188 L 120.7386016845703 -887.28125 C 120.7386016845703 -888.1299438476562 120.4281005859375 -888.5547485351562 119.8089065551758 -888.5547485351562 C 119.4885025024414 -888.5547485351562 119.2229995727539 -888.4341430664062 119.0133056640625 -888.1929321289062 C 118.8036041259766 -887.95263671875 118.6992034912109 -887.6484375 118.6992034912109 -887.28125 L 118.6992034912109 -884.9996948242188 L 118.0584030151367 -884.9996948242188 L 118.0584030151367 -889.000244140625 L 118.6992034912109 -889.000244140625 L 118.6992034912109 -888.3359985351562 L 118.7145004272461 -888.3359985351562 C 119.0168991088867 -888.8409423828125 119.4542999267578 -889.0938110351562 120.0276031494141 -889.0938110351562 C 120.4650039672852 -889.0938110351562 120.7998046875 -888.9525146484375 121.0311050415039 -888.669921875 C 121.2633056640625 -888.3873291015625 121.3785018920898 -887.9796142578125 121.3785018920898 -887.4450073242188 L 121.3785018920898 -884.9996948242188 L 120.7386016845703 -884.9996948242188 Z M 109.3320007324219 -884.9996948242188 L 109.3320007324219 -887.28125 C 109.3320007324219 -888.1299438476562 109.0223999023438 -888.5547485351562 108.4023056030273 -888.5547485351562 C 108.081901550293 -888.5547485351562 107.8172988891602 -888.4341430664062 107.6076049804688 -888.1929321289062 C 107.3979034423828 -887.95263671875 107.2926025390625 -887.6484375 107.2926025390625 -887.28125 L 107.2926025390625 -884.9996948242188 L 106.652702331543 -884.9996948242188 L 106.652702331543 -889.000244140625 L 107.2926025390625 -889.000244140625 L 107.2926025390625 -888.3359985351562 L 107.3087997436523 -888.3359985351562 C 107.6103057861328 -888.8409423828125 108.0485992431641 -889.0938110351562 108.6210021972656 -889.0938110351562 C 109.0584030151367 -889.0938110351562 109.3932037353516 -888.9525146484375 109.6254043579102 -888.669921875 C 109.8567047119141 -888.3873291015625 109.9728012084961 -887.9796142578125 109.9728012084961 -887.4450073242188 L 109.9728012084961 -884.9996948242188 L 109.3320007324219 -884.9996948242188 Z M 104.7150039672852 -884.9996948242188 L 104.7150039672852 -889.000244140625 L 105.3558044433594 -889.000244140625 L 105.3558044433594 -884.9996948242188 L 104.7150039672852 -884.9996948242188 Z M 95.96520233154297 -884.9996948242188 L 95.96520233154297 -887.28125 C 95.96520233154297 -888.1299438476562 95.65470123291016 -888.5547485351562 95.03549957275391 -888.5547485351562 C 94.71510314941406 -888.5547485351562 94.44960021972656 -888.4341430664062 94.23989868164062 -888.1929321289062 C 94.03020477294922 -887.95263671875 93.92580413818359 -887.6484375 93.92580413818359 -887.28125 L 93.92580413818359 -884.9996948242188 L 93.28500366210938 -884.9996948242188 L 93.28500366210938 -889.000244140625 L 93.92580413818359 -889.000244140625 L 93.92580413818359 -888.3359985351562 L 93.94110107421875 -888.3359985351562 C 94.24349975585938 -888.8409423828125 94.68090057373047 -889.0938110351562 95.25420379638672 -889.0938110351562 C 95.69160461425781 -889.0938110351562 96.02640533447266 -888.9525146484375 96.25770568847656 -888.669921875 C 96.48989868164062 -888.3873291015625 96.6051025390625 -887.9796142578125 96.6051025390625 -887.4450073242188 L 96.6051025390625 -884.9996948242188 L 95.96520233154297 -884.9996948242188 Z M 91.34730529785156 -884.9996948242188 L 91.34730529785156 -889.000244140625 L 91.98810577392578 -889.000244140625 L 91.98810577392578 -884.9996948242188 L 91.34730529785156 -884.9996948242188 Z M 86.01570129394531 -884.9996948242188 L 86.01570129394531 -889.000244140625 L 86.65650177001953 -889.000244140625 L 86.65650177001953 -884.9996948242188 L 86.01570129394531 -884.9996948242188 Z M 83.1051025390625 -884.9996948242188 L 81.58950042724609 -889.000244140625 L 82.29330444335938 -889.000244140625 L 83.30850219726562 -886.0941162109375 C 83.38410186767578 -885.8799438476562 83.43090057373047 -885.693603515625 83.44889831542969 -885.5352172851562 L 83.46510314941406 -885.5352172851562 C 83.49120330810547 -885.7359008789062 83.53260040283203 -885.9168090820312 83.59020233154297 -886.0779418945312 L 84.65219879150391 -889.000244140625 L 85.32810211181641 -889.000244140625 L 83.73419952392578 -884.9996948242188 L 83.1051025390625 -884.9996948242188 Z M 75.21839904785156 -884.9996948242188 L 75.21839904785156 -889.000244140625 L 75.85919952392578 -889.000244140625 L 75.85919952392578 -888.1758422851562 L 75.87540435791016 -888.1758422851562 C 75.96630096435547 -888.4566040039062 76.10580444335938 -888.6762084960938 76.29299926757812 -888.833740234375 C 76.48020172119141 -888.9912109375 76.68990325927734 -889.0704345703125 76.92210388183594 -889.0704345703125 C 77.08860015869141 -889.0704345703125 77.21640014648438 -889.0524291992188 77.30460357666016 -889.0155029296875 L 77.30460357666016 -888.351318359375 C 77.19300079345703 -888.437744140625 77.03099822998047 -888.4800415039062 76.82040405273438 -888.4800415039062 C 76.54679870605469 -888.4800415039062 76.31819915771484 -888.351318359375 76.13460540771484 -888.0939331054688 C 75.95100402832031 -887.8356323242188 75.85919952392578 -887.484619140625 75.85919952392578 -887.0391235351562 L 75.85919952392578 -884.9996948242188 L 75.21839904785156 -884.9996948242188 Z M 70.24590301513672 -884.9996948242188 L 70.24590301513672 -889.000244140625 L 70.88670349121094 -889.000244140625 L 70.88670349121094 -888.1758422851562 L 70.90200042724609 -888.1758422851562 C 70.99380493164062 -888.4566040039062 71.13240051269531 -888.6762084960938 71.32050323486328 -888.833740234375 C 71.50769805908203 -888.9912109375 71.71739959716797 -889.0704345703125 71.94960021972656 -889.0704345703125 C 72.11610412597656 -889.0704345703125 72.24390411376953 -889.0524291992188 72.33209991455078 -889.0155029296875 L 72.33209991455078 -888.351318359375 C 72.2196044921875 -888.437744140625 72.05850219726562 -888.4800415039062 71.847900390625 -888.4800415039062 C 71.57430267333984 -888.4800415039062 71.345703125 -888.351318359375 71.16210174560547 -888.0939331054688 C 70.97850036621094 -887.8356323242188 70.88670349121094 -887.484619140625 70.88670349121094 -887.0391235351562 L 70.88670349121094 -884.9996948242188 L 70.24590301513672 -884.9996948242188 Z M 68.39820098876953 -884.9996948242188 L 68.39820098876953 -887.3046264648438 C 68.39820098876953 -888.1380004882812 68.08860015869141 -888.5547485351562 67.46849822998047 -888.5547485351562 C 67.15620422363281 -888.5547485351562 66.89340209960938 -888.4341430664062 66.68009948730469 -888.1929321289062 C 66.46590423583984 -887.95263671875 66.35970306396484 -887.6430053710938 66.35970306396484 -887.2659301757812 L 66.35970306396484 -884.9996948242188 L 65.71890258789062 -884.9996948242188 L 65.71890258789062 -890.9216918945312 L 66.35970306396484 -890.9216918945312 L 66.35970306396484 -888.3359985351562 L 66.375 -888.3359985351562 C 66.68190002441406 -888.8409423828125 67.12020111083984 -889.0938110351562 67.68720245361328 -889.0938110351562 C 68.58810424804688 -889.0938110351562 69.03900146484375 -888.5511474609375 69.03900146484375 -887.46484375 L 69.03900146484375 -884.9996948242188 L 68.39820098876953 -884.9996948242188 Z M 60.75360107421875 -884.9996948242188 L 60.75360107421875 -889.8399047851562 C 60.7041015625 -889.7904052734375 60.63210296630859 -889.7337036132812 60.53670120239258 -889.6697998046875 C 60.44219970703125 -889.6058959960938 60.33510208129883 -889.5429077148438 60.21720123291016 -889.4808349609375 C 60.0984001159668 -889.4178466796875 59.97330093383789 -889.3593139648438 59.84189987182617 -889.304443359375 C 59.71050262451172 -889.2504272460938 59.58180236816406 -889.2072143554688 59.45670318603516 -889.1757202148438 L 59.45670318603516 -889.8246459960938 C 59.59799957275391 -889.8633422851562 59.74650192260742 -889.9164428710938 59.90400314331055 -889.9821166992188 C 60.06150054931641 -890.0487060546875 60.21720123291016 -890.1234130859375 60.36930084228516 -890.205322265625 C 60.52140045166016 -890.2872314453125 60.66540145874023 -890.3727416992188 60.80039978027344 -890.4627075195312 C 60.93630218505859 -890.552734375 61.05330276489258 -890.6409301757812 61.15230178833008 -890.7264404296875 L 61.39440155029297 -890.7264404296875 L 61.39440155029297 -884.9996948242188 L 60.75360107421875 -884.9996948242188 Z M 50.46480178833008 -884.9996948242188 L 50.46480178833008 -887.28125 C 50.46480178833008 -888.1299438476562 50.15520095825195 -888.5547485351562 49.53510284423828 -888.5547485351562 C 49.21470260620117 -888.5547485351562 48.95009994506836 -888.4341430664062 48.74040222167969 -888.1929321289062 C 48.53070068359375 -887.95263671875 48.42539978027344 -887.6484375 48.42539978027344 -887.28125 L 48.42539978027344 -884.9996948242188 L 47.78549957275391 -884.9996948242188 L 47.78549957275391 -889.000244140625 L 48.42539978027344 -889.000244140625 L 48.42539978027344 -888.3359985351562 L 48.44160079956055 -888.3359985351562 C 48.74310302734375 -888.8409423828125 49.18140029907227 -889.0938110351562 49.75379943847656 -889.0938110351562 C 50.19120025634766 -889.0938110351562 50.5260009765625 -888.9525146484375 50.75820159912109 -888.669921875 C 50.989501953125 -888.3873291015625 51.1056022644043 -887.9796142578125 51.1056022644043 -887.4450073242188 L 51.1056022644043 -884.9996948242188 L 50.46480178833008 -884.9996948242188 Z M 104.7500991821289 -890.1324462890625 C 104.6691055297852 -890.210693359375 104.6286010742188 -890.3096923828125 104.6286010742188 -890.429443359375 C 104.6286010742188 -890.5491333007812 104.6691055297852 -890.6490478515625 104.7500991821289 -890.7282104492188 C 104.8311004638672 -890.808349609375 104.9282989501953 -890.847900390625 105.0426025390625 -890.847900390625 C 105.1604995727539 -890.847900390625 105.2595062255859 -890.808349609375 105.3414001464844 -890.7282104492188 C 105.424201965332 -890.6490478515625 105.4646987915039 -890.5491333007812 105.4646987915039 -890.429443359375 C 105.4646987915039 -890.3151245117188 105.424201965332 -890.217041015625 105.3414001464844 -890.1369018554688 C 105.2595062255859 -890.055908203125 105.1604995727539 -890.0154418945312 105.0426025390625 -890.0154418945312 C 104.9282989501953 -890.0154418945312 104.8311004638672 -890.0549926757812 104.7500991821289 -890.1324462890625 Z M 91.38240051269531 -890.1324462890625 C 91.30229949951172 -890.210693359375 91.26180267333984 -890.3096923828125 91.26180267333984 -890.429443359375 C 91.26180267333984 -890.5491333007812 91.30229949951172 -890.6490478515625 91.38240051269531 -890.7282104492188 C 91.46340179443359 -890.808349609375 91.56150054931641 -890.847900390625 91.67580413818359 -890.847900390625 C 91.79280090332031 -890.847900390625 91.8927001953125 -890.808349609375 91.97460174560547 -890.7282104492188 C 92.05650329589844 -890.6490478515625 92.097900390625 -890.5491333007812 92.097900390625 -890.429443359375 C 92.097900390625 -890.3151245117188 92.05650329589844 -890.217041015625 91.97460174560547 -890.1369018554688 C 91.8927001953125 -890.055908203125 91.79280090332031 -890.0154418945312 91.67580413818359 -890.0154418945312 C 91.56150054931641 -890.0154418945312 91.46340179443359 -890.0549926757812 91.38240051269531 -890.1324462890625 Z M 86.05080413818359 -890.1324462890625 C 85.96980285644531 -890.210693359375 85.92929840087891 -890.3096923828125 85.92929840087891 -890.429443359375 C 85.92929840087891 -890.5491333007812 85.96980285644531 -890.6490478515625 86.05080413818359 -890.7282104492188 C 86.13180541992188 -890.808349609375 86.22900390625 -890.847900390625 86.34329986572266 -890.847900390625 C 86.46120452880859 -890.847900390625 86.56020355224609 -890.808349609375 86.64300537109375 -890.7282104492188 C 86.72489929199219 -890.6490478515625 86.76540374755859 -890.5491333007812 86.76540374755859 -890.429443359375 C 86.76540374755859 -890.3151245117188 86.72489929199219 -890.217041015625 86.64300537109375 -890.1369018554688 C 86.56020355224609 -890.055908203125 86.46120452880859 -890.0154418945312 86.34329986572266 -890.0154418945312 C 86.22900390625 -890.0154418945312 86.13180541992188 -890.0549926757812 86.05080413818359 -890.1324462890625 Z" fill="#223e6d" stroke="#000000" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vkg77b =
    '<svg viewBox="214.9 626.0 118.6 7.9" ><path transform="translate(194.87, 1517.0)" d="M 135.1683044433594 -883.3986206054688 L 135.1683044433594 -884.0394287109375 C 135.6183013916016 -883.7892456054688 136.0485076904297 -883.6641235351562 136.4571075439453 -883.6641235351562 C 137.4416961669922 -883.6641235351562 137.9340057373047 -884.1879272460938 137.9340057373047 -885.234619140625 L 137.9340057373047 -885.6719970703125 L 137.9178009033203 -885.6719970703125 C 137.6136016845703 -885.1617431640625 137.1546020507812 -884.9061279296875 136.5426025390625 -884.9061279296875 C 136.0458068847656 -884.9061279296875 135.6453094482422 -885.0843505859375 135.3420104980469 -885.4398193359375 C 135.0386962890625 -885.7953491210938 134.8865966796875 -886.2723388671875 134.8865966796875 -886.870849609375 C 134.8865966796875 -887.5512084960938 135.0503997802734 -888.0912475585938 135.3771057128906 -888.4926147460938 C 135.7037963867188 -888.8931274414062 136.1511077880859 -889.0938110351562 136.7190093994141 -889.0938110351562 C 137.2581024169922 -889.0938110351562 137.6576995849609 -888.8778076171875 137.9178009033203 -888.4449462890625 L 137.9340057373047 -888.4449462890625 L 137.9340057373047 -889.000244140625 L 138.5738983154297 -889.000244140625 L 138.5738983154297 -885.3201293945312 C 138.5738983154297 -883.851318359375 137.8710021972656 -883.116943359375 136.4652099609375 -883.116943359375 C 135.9701995849609 -883.116943359375 135.5373077392578 -883.2105102539062 135.1683044433594 -883.3986206054688 Z M 135.8793029785156 -888.1227416992188 C 135.6551971435547 -887.8356323242188 135.5427093505859 -887.4324340820312 135.5427093505859 -886.9140014648438 C 135.5427093505859 -886.468505859375 135.6506958007812 -886.113037109375 135.8648986816406 -885.845703125 C 136.0800018310547 -885.5784301757812 136.3644104003906 -885.4452514648438 136.7190093994141 -885.4452514648438 C 137.0781097412109 -885.4452514648438 137.37060546875 -885.572998046875 137.5955963134766 -885.8276977539062 C 137.8206024169922 -886.0833129882812 137.9340057373047 -886.4100341796875 137.9340057373047 -886.8087158203125 L 137.9340057373047 -887.398193359375 C 137.9340057373047 -887.7159423828125 137.8260040283203 -887.9886474609375 137.6109008789062 -888.2145385742188 C 137.3966979980469 -888.4413452148438 137.1285095214844 -888.5547485351562 136.8090057373047 -888.5547485351562 C 136.4130096435547 -888.5547485351562 136.1025085449219 -888.4107055664062 135.8793029785156 -888.1227416992188 Z M 38.89800262451172 -883.1600952148438 L 38.89800262451172 -889.000244140625 L 39.53879928588867 -889.000244140625 L 39.53879928588867 -888.2973022460938 L 39.55500030517578 -888.2973022460938 C 39.87000274658203 -888.8283081054688 40.3307991027832 -889.0938110351562 40.93740081787109 -889.0938110351562 C 41.45310211181641 -889.0938110351562 41.85540008544922 -888.9147338867188 42.14430236816406 -888.5565185546875 C 42.43320083618164 -888.1983032226562 42.57810211181641 -887.7186279296875 42.57810211181641 -887.117431640625 C 42.57810211181641 -886.4478149414062 42.41519927978516 -885.9122924804688 42.08940124511719 -885.510009765625 C 41.76449966430664 -885.1077270507812 41.31900024414062 -884.9061279296875 40.75379943847656 -884.9061279296875 C 40.23540115356445 -884.9061279296875 39.83580017089844 -885.1302490234375 39.55500030517578 -885.5784301757812 L 39.53879928588867 -885.5784301757812 L 39.53879928588867 -883.1600952148438 L 38.89800262451172 -883.1600952148438 Z M 39.87900161743164 -888.1658935546875 C 39.65220260620117 -887.90673828125 39.53879928588867 -887.5818481445312 39.53879928588867 -887.1912231445312 L 39.53879928588867 -886.6332397460938 C 39.53879928588867 -886.302001953125 39.64680099487305 -886.021240234375 39.86100006103516 -885.7908325195312 C 40.07609939575195 -885.5604248046875 40.34880065917969 -885.4452514648438 40.68000030517578 -885.4452514648438 C 41.06790161132812 -885.4452514648438 41.37210083007812 -885.59375 41.59170150756836 -885.8907470703125 C 41.81220245361328 -886.187744140625 41.92200088500977 -886.5999145507812 41.92200088500977 -887.129150390625 C 41.92200088500977 -887.5746459960938 41.81940078735352 -887.9229125976562 41.61330032348633 -888.1758422851562 C 41.40719985961914 -888.4287109375 41.12910079956055 -888.5547485351562 40.77720260620117 -888.5547485351562 C 40.40460205078125 -888.5547485351562 40.10580062866211 -888.4251098632812 39.87900161743164 -888.1658935546875 Z M 19.99979972839355 -887.4999389648438 C 19.99979972839355 -889.43310546875 21.56669998168945 -891 23.49990081787109 -891 C 25.4330997467041 -891 27 -889.43310546875 27 -887.4999389648438 C 27 -885.5667114257812 25.4330997467041 -883.9998168945312 23.49990081787109 -883.9998168945312 C 21.56669998168945 -883.9998168945312 19.99979972839355 -885.5667114257812 19.99979972839355 -887.4999389648438 Z M 93.15990447998047 -885.1365356445312 L 93.15990447998047 -885.8160400390625 C 93.54060363769531 -885.5712280273438 93.92940521240234 -885.4487915039062 94.32810211181641 -885.4487915039062 C 94.53150177001953 -885.4487915039062 94.71420288085938 -885.4794311523438 94.87710571289062 -885.538818359375 C 95.04000091552734 -885.59912109375 95.17860412597656 -885.6819458007812 95.29290008544922 -885.7890014648438 C 95.40720367431641 -885.8961181640625 95.49539947509766 -886.0248413085938 95.55660247802734 -886.176025390625 C 95.61780548095703 -886.3272094726562 95.64839935302734 -886.491943359375 95.64839935302734 -886.6719360351562 C 95.64839935302734 -887.0364379882812 95.5260009765625 -887.3226318359375 95.28120422363281 -887.5296020507812 C 95.03639984130859 -887.7366333007812 94.68090057373047 -887.8401489257812 94.21469879150391 -887.8401489257812 C 94.13909912109375 -887.8401489257812 94.05990600585938 -887.8383178710938 93.97620391845703 -887.8356323242188 C 93.89340209960938 -887.8329467773438 93.80970001220703 -887.8302001953125 93.72690582275391 -887.8265991210938 C 93.64320373535156 -887.8221435546875 93.56220245361328 -887.817626953125 93.48210144042969 -887.8121948242188 C 93.40290069580078 -887.8077392578125 93.33090209960938 -887.800537109375 93.26520538330078 -887.7933349609375 L 93.45690155029297 -890.601318359375 L 96.04710388183594 -890.601318359375 L 96.04710388183594 -890.0234985351562 L 94.01129913330078 -890.0234985351562 L 93.8988037109375 -888.3792114257812 C 93.98160552978516 -888.3837280273438 94.07070159912109 -888.3890991210938 94.16429901123047 -888.3927001953125 C 94.25790405273438 -888.3963012695312 94.34070587158203 -888.3981323242188 94.41450500488281 -888.3981323242188 C 94.71060180664062 -888.3981323242188 94.97700500488281 -888.3594360351562 95.21099853515625 -888.2811279296875 C 95.44499969482422 -888.2028198242188 95.64390563964844 -888.0921020507812 95.80680084228516 -887.9472045898438 C 95.96970367431641 -887.8023071289062 96.09300231933594 -887.6259155273438 96.17760467529297 -887.4161987304688 C 96.26219940185547 -887.20654296875 96.30450439453125 -886.9716186523438 96.30450439453125 -886.7106323242188 C 96.30450439453125 -886.4379272460938 96.25770568847656 -886.1904296875 96.16410064697266 -885.968994140625 C 96.07050323486328 -885.7476196289062 95.9364013671875 -885.5577392578125 95.76360321044922 -885.3984375 C 95.59080505371094 -885.2391357421875 95.381103515625 -885.1176147460938 95.13629913330078 -885.03125 C 94.89150238037109 -884.9457397460938 94.61970520019531 -884.9025268554688 94.31999969482422 -884.9025268554688 C 93.7998046875 -884.9025268554688 93.41280364990234 -884.9808349609375 93.15990447998047 -885.1365356445312 Z M 125.0586013793945 -885.1445922851562 L 125.0586013793945 -885.8322143554688 C 125.4078063964844 -885.5739135742188 125.792106628418 -885.4452514648438 126.2106018066406 -885.4452514648438 C 126.7731018066406 -885.4452514648438 127.054801940918 -885.6324462890625 127.054801940918 -886.0077514648438 C 127.054801940918 -886.1148071289062 127.0305023193359 -886.204833984375 126.9828033447266 -886.279541015625 C 126.9342041015625 -886.3533325195312 126.8694000244141 -886.4190063476562 126.7875061035156 -886.4766235351562 C 126.704704284668 -886.5342407226562 126.6084060668945 -886.5855102539062 126.4977035522461 -886.6304931640625 C 126.3870010375977 -886.6763916015625 126.2682037353516 -886.72412109375 126.1404037475586 -886.7736206054688 C 125.9631042480469 -886.8438110351562 125.8083038330078 -886.9149169921875 125.674201965332 -886.9860229492188 C 125.5401000976562 -887.0580444335938 125.427604675293 -887.1390380859375 125.3376007080078 -887.2281494140625 C 125.2476043701172 -887.318115234375 125.1800994873047 -887.4207153320312 125.1351013183594 -887.5350341796875 C 125.0892028808594 -887.6492919921875 125.0667037963867 -887.7843017578125 125.0667037963867 -887.9373168945312 C 125.0667037963867 -888.1254272460938 125.109001159668 -888.291015625 125.1954040527344 -888.4359130859375 C 125.2809066772461 -888.5798950195312 125.3961029052734 -888.701416015625 125.5391998291016 -888.7986450195312 C 125.6823043823242 -888.896728515625 125.8460998535156 -888.9696044921875 126.0297012329102 -889.0191040039062 C 126.2133026123047 -889.068603515625 126.4023056030273 -889.0938110351562 126.5976028442383 -889.0938110351562 C 126.9440994262695 -889.0938110351562 127.2537002563477 -889.0335083007812 127.5273056030273 -888.913818359375 L 127.5273056030273 -888.2658081054688 C 127.2330017089844 -888.4584350585938 126.8945999145508 -888.5547485351562 126.5121002197266 -888.5547485351562 C 126.3915023803711 -888.5547485351562 126.2835006713867 -888.5411987304688 126.1872024536133 -888.5133056640625 C 126.0909042358398 -888.486328125 126.0081024169922 -888.4476318359375 125.9397048950195 -888.3981323242188 C 125.8703994750977 -888.3486328125 125.8173065185547 -888.2901000976562 125.7795028686523 -888.2208251953125 C 125.7417068481445 -888.1515502929688 125.7228012084961 -888.075927734375 125.7228012084961 -887.9922485351562 C 125.7228012084961 -887.8878173828125 125.7417068481445 -887.800537109375 125.7795028686523 -887.7303466796875 C 125.8173065185547 -887.6600952148438 125.872200012207 -887.5980224609375 125.9451065063477 -887.5431518554688 C 126.0180053710938 -887.4882202148438 126.1071014404297 -887.438720703125 126.2106018066406 -887.3945922851562 C 126.3150024414062 -887.3505249023438 126.4337997436523 -887.3019409179688 126.5661010742188 -887.2496948242188 C 126.7434005737305 -887.1822509765625 126.902702331543 -887.1129150390625 127.0431060791016 -887.0408935546875 C 127.1835021972656 -886.9698486328125 127.3031997680664 -886.8887939453125 127.4022064208984 -886.798828125 C 127.5012054443359 -886.7088012695312 127.5777053833008 -886.6053466796875 127.6308059692383 -886.4883422851562 C 127.6839065551758 -886.371337890625 127.7108993530273 -886.2318115234375 127.7108993530273 -886.0707397460938 C 127.7108993530273 -885.8727416992188 127.6677017211914 -885.7008056640625 127.5804061889648 -885.5549926757812 C 127.4931030273438 -885.4092407226562 127.376106262207 -885.2877197265625 127.2303009033203 -885.19140625 C 127.0845031738281 -885.0950927734375 126.917106628418 -885.0231323242188 126.7263031005859 -884.976318359375 C 126.5363998413086 -884.9295043945312 126.3375015258789 -884.9061279296875 126.1287002563477 -884.9061279296875 C 125.717399597168 -884.9061279296875 125.3610000610352 -884.9853515625 125.0586013793945 -885.1445922851562 Z M 115.5582046508789 -885.4515380859375 C 115.2360000610352 -885.814208984375 115.0740051269531 -886.325439453125 115.0740051269531 -886.9841918945312 C 115.0740051269531 -887.6069946289062 115.2504043579102 -888.1137084960938 115.6032028198242 -888.506103515625 C 115.9560012817383 -888.8976440429688 116.3943023681641 -889.0938110351562 116.9181060791016 -889.0938110351562 C 117.4410018920898 -889.0938110351562 117.8460006713867 -888.9246215820312 118.1331024169922 -888.5862426757812 C 118.419303894043 -888.247802734375 118.5624008178711 -887.777099609375 118.5624008178711 -887.1759033203125 L 118.5624008178711 -886.8402099609375 L 115.7382049560547 -886.8402099609375 C 115.7490005493164 -886.3947143554688 115.8687057495117 -886.0509033203125 116.0973052978516 -885.808837890625 C 116.3268051147461 -885.5667114257812 116.6417999267578 -885.4452514648438 117.0432052612305 -885.4452514648438 C 117.4932022094727 -885.4452514648438 117.9072036743164 -885.59375 118.2852020263672 -885.8907470703125 L 118.2852020263672 -885.2886352539062 C 117.9333038330078 -885.033935546875 117.4689025878906 -884.9061279296875 116.8902053833008 -884.9061279296875 C 116.3259048461914 -884.9061279296875 115.8813018798828 -885.0879516601562 115.5582046508789 -885.4515380859375 Z M 116.1369018554688 -888.230712890625 C 115.9253997802734 -888.0147094726562 115.7957992553711 -887.7321166992188 115.7462997436523 -887.3829345703125 L 117.9063034057617 -887.3829345703125 C 117.9036026000977 -887.7528076171875 117.8145065307617 -888.0399169921875 117.6389999389648 -888.2460327148438 C 117.4626007080078 -888.4521484375 117.2187042236328 -888.5547485351562 116.9064025878906 -888.5547485351562 C 116.60400390625 -888.5547485351562 116.3475036621094 -888.4467163085938 116.1369018554688 -888.230712890625 Z M 106.7382049560547 -885.1445922851562 L 106.7382049560547 -885.8322143554688 C 107.08740234375 -885.5739135742188 107.4717025756836 -885.4452514648438 107.8902053833008 -885.4452514648438 C 108.4527053833008 -885.4452514648438 108.7344055175781 -885.6324462890625 108.7344055175781 -886.0077514648438 C 108.7344055175781 -886.1148071289062 108.7101058959961 -886.204833984375 108.6623992919922 -886.279541015625 C 108.6138000488281 -886.3533325195312 108.5490036010742 -886.4190063476562 108.4671020507812 -886.4766235351562 C 108.3852005004883 -886.5342407226562 108.2880020141602 -886.5855102539062 108.1772994995117 -886.6304931640625 C 108.0675048828125 -886.6763916015625 107.9477996826172 -886.72412109375 107.8199996948242 -886.7736206054688 C 107.6436004638672 -886.8438110351562 107.4878997802734 -886.9149169921875 107.3538055419922 -886.9860229492188 C 107.2197036743164 -887.0580444335938 107.1072006225586 -887.1390380859375 107.017204284668 -887.2281494140625 C 106.9281005859375 -887.318115234375 106.8597030639648 -887.4207153320312 106.8147048950195 -887.5350341796875 C 106.768798828125 -887.6492919921875 106.7462997436523 -887.7843017578125 106.7462997436523 -887.9373168945312 C 106.7462997436523 -888.1254272460938 106.7895050048828 -888.291015625 106.875 -888.4359130859375 C 106.9605026245117 -888.5798950195312 107.0756988525391 -888.701416015625 107.2188034057617 -888.7986450195312 C 107.3619003295898 -888.896728515625 107.5257034301758 -888.9696044921875 107.7093048095703 -889.0191040039062 C 107.8929061889648 -889.068603515625 108.081901550293 -889.0938110351562 108.2772064208984 -889.0938110351562 C 108.6237030029297 -889.0938110351562 108.9333038330078 -889.0335083007812 109.206901550293 -888.913818359375 L 109.206901550293 -888.2658081054688 C 108.9126052856445 -888.4584350585938 108.5742034912109 -888.5547485351562 108.1917037963867 -888.5547485351562 C 108.0720062255859 -888.5547485351562 107.9631042480469 -888.5411987304688 107.8668060302734 -888.5133056640625 C 107.7705001831055 -888.486328125 107.6877059936523 -888.4476318359375 107.6193008422852 -888.3981323242188 C 107.5500030517578 -888.3486328125 107.4969024658203 -888.2901000976562 107.459098815918 -888.2208251953125 C 107.4213027954102 -888.1515502929688 107.4024047851562 -888.075927734375 107.4024047851562 -887.9922485351562 C 107.4024047851562 -887.8878173828125 107.4213027954102 -887.800537109375 107.459098815918 -887.7303466796875 C 107.4969024658203 -887.6600952148438 107.5518035888672 -887.5980224609375 107.6247024536133 -887.5431518554688 C 107.6976013183594 -887.4882202148438 107.7867050170898 -887.438720703125 107.8902053833008 -887.3945922851562 C 107.9946060180664 -887.3505249023438 108.1134033203125 -887.3019409179688 108.2457046508789 -887.2496948242188 C 108.4230041503906 -887.1822509765625 108.5823059082031 -887.1129150390625 108.7227020263672 -887.0408935546875 C 108.8631057739258 -886.9698486328125 108.9828033447266 -886.8887939453125 109.0818023681641 -886.798828125 C 109.1808013916016 -886.7088012695312 109.2573013305664 -886.6053466796875 109.3104019165039 -886.4883422851562 C 109.3635025024414 -886.371337890625 109.3905029296875 -886.2318115234375 109.3905029296875 -886.0707397460938 C 109.3905029296875 -885.8727416992188 109.3473052978516 -885.7008056640625 109.2600021362305 -885.5549926757812 C 109.1726989746094 -885.4092407226562 109.0557022094727 -885.2877197265625 108.9099044799805 -885.19140625 C 108.7640991210938 -885.0950927734375 108.5967025756836 -885.0231323242188 108.4058990478516 -884.976318359375 C 108.2160034179688 -884.9295043945312 108.0171051025391 -884.9061279296875 107.8083038330078 -884.9061279296875 C 107.3970031738281 -884.9061279296875 107.0406036376953 -884.9853515625 106.7382049560547 -885.1445922851562 Z M 84.04109954833984 -885.466796875 C 83.68830108642578 -885.84033203125 83.51190185546875 -886.3362426757812 83.51190185546875 -886.9526977539062 C 83.51190185546875 -887.625 83.69550323486328 -888.1497192382812 84.06269836425781 -888.5277099609375 C 84.42990112304688 -888.9048461914062 84.92580413818359 -889.0938110351562 85.55039978027344 -889.0938110351562 C 86.14710235595703 -889.0938110351562 86.61240386962891 -888.9102172851562 86.94720458984375 -888.5430297851562 C 87.28200531005859 -888.1758422851562 87.44940185546875 -887.6664428710938 87.44940185546875 -887.0157470703125 C 87.44940185546875 -886.3776245117188 87.26850128173828 -885.8663940429688 86.90850067138672 -885.4821166992188 C 86.54759979248047 -885.0986938476562 86.06340026855469 -884.9061279296875 85.45680236816406 -884.9061279296875 C 84.86550140380859 -884.9061279296875 84.39390563964844 -885.0933227539062 84.04109954833984 -885.466796875 Z M 84.527099609375 -888.1343994140625 C 84.28770446777344 -887.8544921875 84.16799926757812 -887.4684448242188 84.16799926757812 -886.9761352539062 C 84.16799926757812 -886.5027465820312 84.28950500488281 -886.1292114257812 84.53160095214844 -885.8556518554688 C 84.77370452880859 -885.58203125 85.09770202636719 -885.4452514648438 85.50360107421875 -885.4452514648438 C 85.9176025390625 -885.4452514648438 86.23619842529297 -885.579345703125 86.45940399169922 -885.8475341796875 C 86.68170166015625 -886.11572265625 86.79330444335938 -886.497314453125 86.79330444335938 -886.9923095703125 C 86.79330444335938 -887.4918212890625 86.68170166015625 -887.8779296875 86.45940399169922 -888.1488037109375 C 86.23619842529297 -888.4188232421875 85.9176025390625 -888.5547485351562 85.50360107421875 -888.5547485351562 C 85.09230041503906 -888.5547485351562 84.76650238037109 -888.414306640625 84.527099609375 -888.1343994140625 Z M 75.62699890136719 -885.222900390625 C 75.40200042724609 -885.4335327148438 75.28950500488281 -885.7134399414062 75.28950500488281 -886.0626220703125 C 75.28950500488281 -886.8096313476562 75.72959899902344 -887.2452392578125 76.60980224609375 -887.3676147460938 L 77.80860137939453 -887.5350341796875 C 77.80860137939453 -888.2145385742188 77.53410339355469 -888.5547485351562 76.98419952392578 -888.5547485351562 C 76.50270080566406 -888.5547485351562 76.06800079345703 -888.3909301757812 75.68009948730469 -888.0624389648438 L 75.68009948730469 -888.718505859375 C 76.07250213623047 -888.96875 76.52610015869141 -889.0938110351562 77.03910064697266 -889.0938110351562 C 77.97959899902344 -889.0938110351562 78.44940185546875 -888.5961303710938 78.44940185546875 -887.6016235351562 L 78.44940185546875 -884.9996948242188 L 77.80860137939453 -884.9996948242188 L 77.80860137939453 -885.625244140625 L 77.79330444335938 -885.625244140625 C 77.51430511474609 -885.1455078125 77.10390472412109 -884.9061279296875 76.56210327148438 -884.9061279296875 C 76.16429901123047 -884.9061279296875 75.85200500488281 -885.0114135742188 75.62699890136719 -885.222900390625 Z M 76.84380340576172 -886.890625 C 76.54679870605469 -886.8492431640625 76.32270050048828 -886.7754516601562 76.17150115966797 -886.6701049804688 C 76.02120208740234 -886.5648193359375 75.94560241699219 -886.3776245117188 75.94560241699219 -886.1094360351562 C 75.94560241699219 -885.9141235351562 76.01490020751953 -885.7548217773438 76.15440368652344 -885.630615234375 C 76.29389953613281 -885.50732421875 76.47930145263672 -885.4452514648438 76.71060180664062 -885.4452514648438 C 77.02830505371094 -885.4452514648438 77.29109954833984 -885.5568237304688 77.49810028076172 -885.7791137695312 C 77.70510101318359 -886.0023193359375 77.80860137939453 -886.2839965820312 77.80860137939453 -886.6251220703125 L 77.80860137939453 -887.0238037109375 L 76.84380340576172 -886.890625 Z M 68.44319915771484 -885.466796875 C 68.09040069580078 -885.84033203125 67.91400146484375 -886.3362426757812 67.91400146484375 -886.9526977539062 C 67.91400146484375 -887.625 68.09760284423828 -888.1497192382812 68.46479797363281 -888.5277099609375 C 68.83200073242188 -888.9048461914062 69.32790374755859 -889.0938110351562 69.95339965820312 -889.0938110351562 C 70.54920196533203 -889.0938110351562 71.01540374755859 -888.9102172851562 71.34930419921875 -888.5430297851562 C 71.68410491943359 -888.1758422851562 71.85150146484375 -887.6664428710938 71.85150146484375 -887.0157470703125 C 71.85150146484375 -886.3776245117188 71.67150115966797 -885.8663940429688 71.31060028076172 -885.4821166992188 C 70.94969940185547 -885.0986938476562 70.46640014648438 -884.9061279296875 69.85980224609375 -884.9061279296875 C 69.26850128173828 -884.9061279296875 68.79600524902344 -885.0933227539062 68.44319915771484 -885.466796875 Z M 68.93009948730469 -888.1343994140625 C 68.68980407714844 -887.8544921875 68.57009887695312 -887.4684448242188 68.57009887695312 -886.9761352539062 C 68.57009887695312 -886.5027465820312 68.69160461425781 -886.1292114257812 68.93370056152344 -885.8556518554688 C 69.17580413818359 -885.58203125 69.49980163574219 -885.4452514648438 69.90660095214844 -885.4452514648438 C 70.32060241699219 -885.4452514648438 70.63829803466797 -885.579345703125 70.86150360107422 -885.8475341796875 C 71.08380126953125 -886.11572265625 71.19540405273438 -886.497314453125 71.19540405273438 -886.9923095703125 C 71.19540405273438 -887.4918212890625 71.08380126953125 -887.8779296875 70.86150360107422 -888.1488037109375 C 70.63829803466797 -888.4188232421875 70.32060241699219 -888.5547485351562 69.90660095214844 -888.5547485351562 C 69.49440002441406 -888.5547485351562 69.16950225830078 -888.414306640625 68.93009948730469 -888.1343994140625 Z M 59.25600051879883 -885.222900390625 C 59.03100204467773 -885.4335327148438 58.9176025390625 -885.7134399414062 58.9176025390625 -886.0626220703125 C 58.9176025390625 -886.8096313476562 59.35770034790039 -887.2452392578125 60.23789978027344 -887.3676147460938 L 61.43760299682617 -887.5350341796875 C 61.43760299682617 -888.2145385742188 61.16310119628906 -888.5547485351562 60.61320114135742 -888.5547485351562 C 60.1317024230957 -888.5547485351562 59.69700241088867 -888.3909301757812 59.30820083618164 -888.0624389648438 L 59.30820083618164 -888.718505859375 C 59.70149993896484 -888.96875 60.15510177612305 -889.0938110351562 60.6681022644043 -889.0938110351562 C 61.60770034790039 -889.0938110351562 62.07839965820312 -888.5961303710938 62.07839965820312 -887.6016235351562 L 62.07839965820312 -884.9996948242188 L 61.43760299682617 -884.9996948242188 L 61.43760299682617 -885.625244140625 L 61.42230224609375 -885.625244140625 C 61.14330291748047 -885.1455078125 60.73290252685547 -884.9061279296875 60.19110107421875 -884.9061279296875 C 59.79330062866211 -884.9061279296875 59.48100280761719 -885.0114135742188 59.25600051879883 -885.222900390625 Z M 60.47280120849609 -886.890625 C 60.17580032348633 -886.8492431640625 59.95170211791992 -886.7754516601562 59.80050277709961 -886.6701049804688 C 59.64929962158203 -886.5648193359375 59.57460021972656 -886.3776245117188 59.57460021972656 -886.1094360351562 C 59.57460021972656 -885.9141235351562 59.64390182495117 -885.7548217773438 59.78340148925781 -885.630615234375 C 59.92290115356445 -885.50732421875 60.10830307006836 -885.4452514648438 60.339599609375 -885.4452514648438 C 60.65730285644531 -885.4452514648438 60.92010116577148 -885.5568237304688 61.12710189819336 -885.7791137695312 C 61.33410263061523 -886.0023193359375 61.43760299682617 -886.2839965820312 61.43760299682617 -886.6251220703125 L 61.43760299682617 -887.0238037109375 L 60.47280120849609 -886.890625 Z M 52.48979949951172 -885.4434204101562 C 52.18920135498047 -885.8016357421875 52.03890228271484 -886.2894287109375 52.03890228271484 -886.9059448242188 C 52.03890228271484 -887.5674438476562 52.20540237426758 -888.0975341796875 52.53930282592773 -888.4962158203125 C 52.8723030090332 -888.8948974609375 53.31600189208984 -889.0938110351562 53.87129974365234 -889.0938110351562 C 54.4202995300293 -889.0938110351562 54.81990051269531 -888.8778076171875 55.07010269165039 -888.4449462890625 L 55.08629989624023 -888.4449462890625 L 55.08629989624023 -890.9216918945312 L 55.72620010375977 -890.9216918945312 L 55.72620010375977 -884.9996948242188 L 55.08629989624023 -884.9996948242188 L 55.08629989624023 -885.6801147460938 L 55.07010269165039 -885.6801147460938 C 54.77310180664062 -885.1644287109375 54.31500244140625 -884.9061279296875 53.69490051269531 -884.9061279296875 C 53.19269943237305 -884.9061279296875 52.79130172729492 -885.085205078125 52.48979949951172 -885.4434204101562 Z M 53.03160095214844 -888.1254272460938 C 52.80750274658203 -887.8383178710938 52.69499969482422 -887.4423217773438 52.69499969482422 -886.9374389648438 C 52.69499969482422 -886.4766235351562 52.80300140380859 -886.113037109375 53.0172004699707 -885.845703125 C 53.2322998046875 -885.5784301757812 53.52120208740234 -885.4452514648438 53.88299942016602 -885.4452514648438 C 54.23940277099609 -885.4452514648438 54.52920150756836 -885.5739135742188 54.75239944458008 -885.8322143554688 C 54.97470092773438 -886.089599609375 55.08629989624023 -886.4154052734375 55.08629989624023 -886.8087158203125 L 55.08629989624023 -887.398193359375 C 55.08629989624023 -887.7213134765625 54.97920227050781 -887.9949340820312 54.76589965820312 -888.218994140625 C 54.55170059204102 -888.443115234375 54.28079986572266 -888.5547485351562 53.95320129394531 -888.5547485351562 C 53.56260299682617 -888.5547485351562 53.25480270385742 -888.41162109375 53.03160095214844 -888.1254272460938 Z M 43.81290054321289 -885.4515380859375 C 43.48979949951172 -885.814208984375 43.32780075073242 -886.325439453125 43.32780075073242 -886.9841918945312 C 43.32780075073242 -887.6069946289062 43.50419998168945 -888.1137084960938 43.85700225830078 -888.506103515625 C 44.21070098876953 -888.8976440429688 44.64810180664062 -889.0938110351562 45.17190170288086 -889.0938110351562 C 45.69570159912109 -889.0938110351562 46.10070037841797 -888.9246215820312 46.38690185546875 -888.5862426757812 C 46.67309951782227 -888.247802734375 46.81620025634766 -887.777099609375 46.81620025634766 -887.1759033203125 L 46.81620025634766 -886.8402099609375 L 43.99200057983398 -886.8402099609375 C 44.00279998779297 -886.3947143554688 44.12250137329102 -886.0509033203125 44.35200119018555 -885.808837890625 C 44.58060073852539 -885.5667114257812 44.89559936523438 -885.4452514648438 45.29700088500977 -885.4452514648438 C 45.74700164794922 -885.4452514648438 46.16189956665039 -885.59375 46.53900146484375 -885.8907470703125 L 46.53900146484375 -885.2886352539062 C 46.18709945678711 -885.033935546875 45.72270202636719 -884.9061279296875 45.14490127563477 -884.9061279296875 C 44.5797004699707 -884.9061279296875 44.13510131835938 -885.0879516601562 43.81290054321289 -885.4515380859375 Z M 44.39070129394531 -888.230712890625 C 44.18009948730469 -888.0147094726562 44.04960250854492 -887.7321166992188 44.00009918212891 -887.3829345703125 L 46.16010284423828 -887.3829345703125 C 46.15740203857422 -887.7528076171875 46.06830215454102 -888.0399169921875 45.89279937744141 -888.2460327148438 C 45.71640014648438 -888.4521484375 45.47249984741211 -888.5547485351562 45.16020202636719 -888.5547485351562 C 44.8577995300293 -888.5547485351562 44.60129928588867 -888.4467163085938 44.39070129394531 -888.230712890625 Z M 35.54730224609375 -884.927734375 C 35.41680145263672 -884.942138671875 35.28359985351562 -884.9628295898438 35.14860153198242 -884.9898071289062 C 35.01269912719727 -885.0177001953125 34.8848991394043 -885.051025390625 34.76340103149414 -885.0914916992188 C 34.64279937744141 -885.1320190429688 34.54560089111328 -885.177001953125 34.47270202636719 -885.2265014648438 L 34.47270202636719 -885.9996337890625 C 34.5609016418457 -885.9222412109375 34.66709899902344 -885.8511352539062 34.79130172729492 -885.7890014648438 C 34.91460037231445 -885.7269287109375 35.04510116577148 -885.673828125 35.18190002441406 -885.630615234375 C 35.31870269775391 -885.5883178710938 35.45550155639648 -885.5549926757812 35.59410095214844 -885.5316162109375 C 35.7318000793457 -885.5082397460938 35.85960006713867 -885.4965209960938 35.97660064697266 -885.4965209960938 C 36.37980270385742 -885.4965209960938 36.68130111694336 -885.5712280273438 36.88109970092773 -885.7206420898438 C 37.08000183105469 -885.8699951171875 37.17990112304688 -886.0859985351562 37.17990112304688 -886.3668212890625 C 37.17990112304688 -886.5180053710938 37.14660263061523 -886.6494140625 37.08000183105469 -886.7619018554688 C 37.01340103149414 -886.87353515625 36.92160034179688 -886.9761352539062 36.80459976196289 -887.0679321289062 C 36.68759918212891 -887.16064453125 36.54899978637695 -887.2496948242188 36.38880157470703 -887.3343505859375 C 36.22859954833984 -887.4189453125 36.05580139160156 -887.5079956054688 35.87129974365234 -887.6016235351562 C 35.67600250244141 -887.7006225585938 35.49330139160156 -887.800537109375 35.32410049438477 -887.9022216796875 C 35.15489959716797 -888.00390625 35.00820159912109 -888.1155395507812 34.88310241699219 -888.2379150390625 C 34.75799942016602 -888.3603515625 34.6599006652832 -888.4989013671875 34.5879020690918 -888.6546020507812 C 34.51589965820312 -888.8094482421875 34.48080062866211 -888.9912109375 34.48080062866211 -889.1990966796875 C 34.48080062866211 -889.4547119140625 34.53660202026367 -889.6761474609375 34.64820098876953 -889.8651123046875 C 34.76070022583008 -890.0541381835938 34.90740203857422 -890.2098388671875 35.0900993347168 -890.3322143554688 C 35.27190017700195 -890.4546508789062 35.47980117797852 -890.5455322265625 35.7129020690918 -890.6058349609375 C 35.94599914550781 -890.6652221679688 36.18360137939453 -890.6949462890625 36.42570114135742 -890.6949462890625 C 36.97830200195312 -890.6949462890625 37.38059997558594 -890.6292114257812 37.63260269165039 -890.4960327148438 L 37.63260269165039 -889.7579956054688 C 37.30229949951172 -889.9866333007812 36.87750244140625 -890.101806640625 36.35910034179688 -890.101806640625 C 36.21599960327148 -890.101806640625 36.07290267944336 -890.0865478515625 35.92980194091797 -890.0568237304688 C 35.78670120239258 -890.027099609375 35.65890121459961 -889.9776000976562 35.54730224609375 -889.9100952148438 C 35.43479919433594 -889.8426513671875 35.34390258789062 -889.7553100585938 35.27370071411133 -889.648193359375 C 35.2035026550293 -889.5419921875 35.16839981079102 -889.4114990234375 35.16839981079102 -889.2576293945312 C 35.16839981079102 -889.114501953125 35.19449996948242 -888.9912109375 35.24760055541992 -888.8868408203125 C 35.30160140991211 -888.7824096679688 35.37990188598633 -888.6879272460938 35.48430252075195 -888.6015014648438 C 35.58869934082031 -888.5159912109375 35.71559906005859 -888.4323120117188 35.8650016784668 -888.351318359375 C 36.01530075073242 -888.271240234375 36.18720245361328 -888.18212890625 36.38249969482422 -888.0858154296875 C 36.58320236206055 -887.98681640625 36.77310180664062 -887.8824462890625 36.95310211181641 -887.7734985351562 C 37.13310241699219 -887.6636962890625 37.29059982299805 -887.5431518554688 37.42560195922852 -887.409912109375 C 37.56150054931641 -887.2776489257812 37.66860198974609 -887.1300048828125 37.747802734375 -886.9689331054688 C 37.82789993286133 -886.8069458007812 37.86750030517578 -886.6224365234375 37.86750030517578 -886.4136352539062 C 37.86750030517578 -886.1382446289062 37.81349945068359 -885.9042358398438 37.70550155639648 -885.7125244140625 C 37.59659957885742 -885.521728515625 37.45080184936523 -885.3660278320312 37.2672004699707 -885.246337890625 C 37.08359909057617 -885.1266479492188 36.87210083007812 -885.039306640625 36.6327018737793 -884.9862060546875 C 36.3932991027832 -884.93310546875 36.14039993286133 -884.9061279296875 35.87490081787109 -884.9061279296875 C 35.78670120239258 -884.9061279296875 35.67690277099609 -884.913330078125 35.54730224609375 -884.927734375 Z M 73.08180236816406 -886.0859985351562 L 73.08180236816406 -888.4530029296875 L 72.39420318603516 -888.4530029296875 L 72.39420318603516 -889.000244140625 L 73.08180236816406 -889.000244140625 L 73.08180236816406 -889.9767456054688 L 73.72260284423828 -890.1837158203125 L 73.72260284423828 -889.000244140625 L 74.73059844970703 -889.000244140625 L 74.73059844970703 -888.4530029296875 L 73.72260284423828 -888.4530029296875 L 73.72260284423828 -886.1994018554688 C 73.72260284423828 -885.9312133789062 73.76850128173828 -885.739501953125 73.85940551757812 -885.625244140625 C 73.95030212402344 -885.510009765625 74.10150146484375 -885.4533081054688 74.31210327148438 -885.4533081054688 C 74.47409820556641 -885.4533081054688 74.61360168457031 -885.4974365234375 74.73059844970703 -885.5856323242188 L 74.73059844970703 -885.039306640625 C 74.57939910888672 -884.9556274414062 74.38050079345703 -884.9142456054688 74.13300323486328 -884.9142456054688 C 73.43190002441406 -884.9142456054688 73.08180236816406 -885.3048095703125 73.08180236816406 -886.0859985351562 Z M 65.68379974365234 -886.0859985351562 L 65.68379974365234 -888.4530029296875 L 64.99620056152344 -888.4530029296875 L 64.99620056152344 -889.000244140625 L 65.68379974365234 -889.000244140625 L 65.68379974365234 -889.9767456054688 L 66.32460021972656 -890.1837158203125 L 66.32460021972656 -889.000244140625 L 67.33170318603516 -889.000244140625 L 67.33170318603516 -888.4530029296875 L 66.32460021972656 -888.4530029296875 L 66.32460021972656 -886.1994018554688 C 66.32460021972656 -885.9312133789062 66.36959838867188 -885.739501953125 66.46050262451172 -885.625244140625 C 66.55229949951172 -885.510009765625 66.70349884033203 -885.4533081054688 66.91410064697266 -885.4533081054688 C 67.07520294189453 -885.4533081054688 67.21469879150391 -885.4974365234375 67.33170318603516 -885.5856323242188 L 67.33170318603516 -885.039306640625 C 67.18140411376953 -884.9556274414062 66.98159790039062 -884.9142456054688 66.73410034179688 -884.9142456054688 C 66.03390502929688 -884.9142456054688 65.68379974365234 -885.3048095703125 65.68379974365234 -886.0859985351562 Z M 133.3125 -884.9996948242188 L 133.3125 -887.28125 C 133.3125 -888.1299438476562 133.0028991699219 -888.5547485351562 132.3827972412109 -888.5547485351562 C 132.0624084472656 -888.5547485351562 131.7978057861328 -888.4341430664062 131.5881042480469 -888.1929321289062 C 131.3784027099609 -887.95263671875 131.2731018066406 -887.6484375 131.2731018066406 -887.28125 L 131.2731018066406 -884.9996948242188 L 130.6332092285156 -884.9996948242188 L 130.6332092285156 -889.000244140625 L 131.2731018066406 -889.000244140625 L 131.2731018066406 -888.3359985351562 L 131.289306640625 -888.3359985351562 C 131.5908050537109 -888.8409423828125 132.0290985107422 -889.0938110351562 132.6015014648438 -889.0938110351562 C 133.0389099121094 -889.0938110351562 133.3737030029297 -888.9525146484375 133.6058959960938 -888.669921875 C 133.8372039794922 -888.3873291015625 133.9533081054688 -887.9796142578125 133.9533081054688 -887.4450073242188 L 133.9533081054688 -884.9996948242188 L 133.3125 -884.9996948242188 Z M 128.6954956054688 -884.9996948242188 L 128.6954956054688 -889.000244140625 L 129.3363037109375 -889.000244140625 L 129.3363037109375 -884.9996948242188 L 128.6954956054688 -884.9996948242188 Z M 123.3630065917969 -884.9996948242188 L 123.3630065917969 -889.000244140625 L 124.0037994384766 -889.000244140625 L 124.0037994384766 -884.9996948242188 L 123.3630065917969 -884.9996948242188 Z M 120.4533004760742 -884.9996948242188 L 118.9377059936523 -889.000244140625 L 119.6406021118164 -889.000244140625 L 120.6557998657227 -886.0941162109375 C 120.7313995361328 -885.8799438476562 120.778205871582 -885.693603515625 120.7971038818359 -885.5352172851562 L 120.8124008178711 -885.5352172851562 C 120.8385009765625 -885.7359008789062 120.8799057006836 -885.9168090820312 120.9375 -886.0779418945312 L 122.0004043579102 -889.000244140625 L 122.6753997802734 -889.000244140625 L 121.082405090332 -884.9996948242188 L 120.4533004760742 -884.9996948242188 Z M 112.5666046142578 -884.9996948242188 L 112.5666046142578 -889.000244140625 L 113.207405090332 -889.000244140625 L 113.207405090332 -888.1758422851562 L 113.2227020263672 -888.1758422851562 C 113.313606262207 -888.4566040039062 113.4531021118164 -888.6762084960938 113.6403045654297 -888.833740234375 C 113.8283996582031 -888.9912109375 114.0381011962891 -889.0704345703125 114.269401550293 -889.0704345703125 C 114.435905456543 -889.0704345703125 114.5637054443359 -889.0524291992188 114.6519012451172 -889.0155029296875 L 114.6519012451172 -888.351318359375 C 114.5403060913086 -888.437744140625 114.3792037963867 -888.4800415039062 114.1677017211914 -888.4800415039062 C 113.8941040039062 -888.4800415039062 113.6664047241211 -888.351318359375 113.4828033447266 -888.0939331054688 C 113.299201965332 -887.8356323242188 113.207405090332 -887.484619140625 113.207405090332 -887.0391235351562 L 113.207405090332 -884.9996948242188 L 112.5666046142578 -884.9996948242188 Z M 104.1993026733398 -884.9996948242188 L 104.1993026733398 -889.000244140625 L 104.8401031494141 -889.000244140625 L 104.8401031494141 -888.1758422851562 L 104.8554000854492 -888.1758422851562 C 104.9463043212891 -888.4566040039062 105.0858001708984 -888.6762084960938 105.2730026245117 -888.833740234375 C 105.4611053466797 -888.9912109375 105.6707992553711 -889.0704345703125 105.902099609375 -889.0704345703125 C 106.068603515625 -889.0704345703125 106.196403503418 -889.0524291992188 106.2854995727539 -889.0155029296875 L 106.2854995727539 -888.351318359375 C 106.1730041503906 -888.437744140625 106.0119018554688 -888.4800415039062 105.8003997802734 -888.4800415039062 C 105.527702331543 -888.4800415039062 105.2991027832031 -888.351318359375 105.1155014038086 -888.0939331054688 C 104.9319000244141 -887.8356323242188 104.8401031494141 -887.484619140625 104.8401031494141 -887.0391235351562 L 104.8401031494141 -884.9996948242188 L 104.1993026733398 -884.9996948242188 Z M 102.3516006469727 -884.9996948242188 L 102.3516006469727 -887.3046264648438 C 102.3516006469727 -888.1380004882812 102.0419998168945 -888.5547485351562 101.4219055175781 -888.5547485351562 C 101.1096038818359 -888.5547485351562 100.8459014892578 -888.4341430664062 100.6325988769531 -888.1929321289062 C 100.419303894043 -887.95263671875 100.3122024536133 -887.6430053710938 100.3122024536133 -887.2659301757812 L 100.3122024536133 -884.9996948242188 L 99.67230224609375 -884.9996948242188 L 99.67230224609375 -890.9216918945312 L 100.3122024536133 -890.9216918945312 L 100.3122024536133 -888.3359985351562 L 100.3283996582031 -888.3359985351562 C 100.6352996826172 -888.8409423828125 101.0727005004883 -889.0938110351562 101.6406021118164 -889.0938110351562 C 102.54150390625 -889.0938110351562 102.9924011230469 -888.5511474609375 102.9924011230469 -887.46484375 L 102.9924011230469 -884.9996948242188 L 102.3516006469727 -884.9996948242188 Z M 88.71480560302734 -884.9996948242188 L 88.71480560302734 -888.4530029296875 L 88.03079986572266 -888.4530029296875 L 88.03079986572266 -889.000244140625 L 88.71480560302734 -889.000244140625 L 88.71480560302734 -889.648193359375 C 88.71480560302734 -890.067626953125 88.8363037109375 -890.3988037109375 89.07839965820312 -890.6427001953125 C 89.32050323486328 -890.8857421875 89.62200164794922 -891.0081176757812 89.98470306396484 -891.0081176757812 C 90.18000030517578 -891.0081176757812 90.33480072021484 -890.9847412109375 90.44910430908203 -890.9379272460938 L 90.44910430908203 -890.3591918945312 C 90.32400512695312 -890.429443359375 90.18270111083984 -890.4645385742188 90.02339935302734 -890.4645385742188 C 89.57520294189453 -890.4645385742188 89.35200500488281 -890.1819458007812 89.35200500488281 -889.6176147460938 L 89.35200500488281 -889.000244140625 L 90.28890228271484 -889.000244140625 L 90.28890228271484 -888.4530029296875 L 89.35200500488281 -888.4530029296875 L 89.35200500488281 -884.9996948242188 L 88.71480560302734 -884.9996948242188 Z M 79.65630340576172 -884.9996948242188 L 79.65630340576172 -890.9216918945312 L 80.29710388183594 -890.9216918945312 L 80.29710388183594 -884.9996948242188 L 79.65630340576172 -884.9996948242188 Z M 50.46480178833008 -884.9996948242188 L 50.46480178833008 -887.28125 C 50.46480178833008 -888.1299438476562 50.15520095825195 -888.5547485351562 49.53510284423828 -888.5547485351562 C 49.21470260620117 -888.5547485351562 48.95009994506836 -888.4341430664062 48.74040222167969 -888.1929321289062 C 48.53070068359375 -887.95263671875 48.42539978027344 -887.6484375 48.42539978027344 -887.28125 L 48.42539978027344 -884.9996948242188 L 47.78549957275391 -884.9996948242188 L 47.78549957275391 -889.000244140625 L 48.42539978027344 -889.000244140625 L 48.42539978027344 -888.3359985351562 L 48.44160079956055 -888.3359985351562 C 48.74310302734375 -888.8409423828125 49.18140029907227 -889.0938110351562 49.75379943847656 -889.0938110351562 C 50.19120025634766 -889.0938110351562 50.5260009765625 -888.9525146484375 50.75820159912109 -888.669921875 C 50.989501953125 -888.3873291015625 51.1056022644043 -887.9796142578125 51.1056022644043 -887.4450073242188 L 51.1056022644043 -884.9996948242188 L 50.46480178833008 -884.9996948242188 Z M 128.7306060791016 -890.1324462890625 C 128.6495971679688 -890.210693359375 128.6091003417969 -890.3096923828125 128.6091003417969 -890.429443359375 C 128.6091003417969 -890.5491333007812 128.6495971679688 -890.6490478515625 128.7306060791016 -890.7282104492188 C 128.8115997314453 -890.808349609375 128.9087982177734 -890.847900390625 129.0231018066406 -890.847900390625 C 129.1410064697266 -890.847900390625 129.2400054931641 -890.808349609375 129.3218994140625 -890.7282104492188 C 129.4047088623047 -890.6490478515625 129.4452056884766 -890.5491333007812 129.4452056884766 -890.429443359375 C 129.4452056884766 -890.3151245117188 129.4047088623047 -890.217041015625 129.3218994140625 -890.1369018554688 C 129.2400054931641 -890.055908203125 129.1410064697266 -890.0154418945312 129.0231018066406 -890.0154418945312 C 128.9087982177734 -890.0154418945312 128.8115997314453 -890.0549926757812 128.7306060791016 -890.1324462890625 Z M 123.3981018066406 -890.1324462890625 C 123.318000793457 -890.210693359375 123.2775039672852 -890.3096923828125 123.2775039672852 -890.429443359375 C 123.2775039672852 -890.5491333007812 123.318000793457 -890.6490478515625 123.3981018066406 -890.7282104492188 C 123.4791030883789 -890.808349609375 123.5772018432617 -890.847900390625 123.6915054321289 -890.847900390625 C 123.8085021972656 -890.847900390625 123.9084014892578 -890.808349609375 123.9903030395508 -890.7282104492188 C 124.0722045898438 -890.6490478515625 124.1136016845703 -890.5491333007812 124.1136016845703 -890.429443359375 C 124.1136016845703 -890.3151245117188 124.0722045898438 -890.217041015625 123.9903030395508 -890.1369018554688 C 123.9084014892578 -890.055908203125 123.8085021972656 -890.0154418945312 123.6915054321289 -890.0154418945312 C 123.5772018432617 -890.0154418945312 123.4791030883789 -890.0549926757812 123.3981018066406 -890.1324462890625 Z" fill="#223e6d" stroke="#000000" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_clp5mw =
    '<svg viewBox="311.5 750.5 28.0 28.0" ><path transform="translate(291.5, 1644.5)" d="M 34.00020217895508 -880.000244140625 L 19.99979972839355 -880.000244140625 L 34.00020217895508 -880.000244140625 L 34.00020217895508 -893.9996948242188 L 34.00020217895508 -880.000244140625 L 47.99970245361328 -880.000244140625 L 34.00020217895508 -880.000244140625 L 34.00020217895508 -865.9998168945312 L 34.00020217895508 -880.000244140625 Z" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l7mu1f =
    '<svg viewBox="36.0 373.0 19.1 20.0" ><path transform="translate(33.55, 371.0)" d="M 10.49020004272461 2 C 10.01119995117188 2 9.601770401000977 2.338589906692505 9.509770393371582 2.808589935302734 L 9.175780296325684 4.523439884185791 C 8.355019569396973 4.833799839019775 7.596099853515625 5.267399787902832 6.929689884185791 5.814449787139893 L 5.285160064697266 5.248050212860107 C 4.832159996032715 5.092050075531006 4.333749771118164 5.279359817504883 4.09375 5.693359851837158 L 2.585939884185791 8.306639671325684 C 2.346940040588379 8.721639633178711 2.433919906616211 9.248499870300293 2.794919967651367 9.5625 L 4.113279819488525 10.70899963378906 C 4.04472017288208 11.13029956817627 4 11.55930042266846 4 12 C 4 12.44069957733154 4.04472017288208 12.86970043182373 4.113279819488525 13.29100036621094 L 2.794919967651367 14.4375 C 2.433919906616211 14.75150012969971 2.346940040588379 15.27840042114258 2.585939884185791 15.69340038299561 L 4.09375 18.30660057067871 C 4.332749843597412 18.72159957885742 4.832159996032715 18.90889930725098 5.285160064697266 18.7539005279541 L 6.929689884185791 18.1875 C 7.595880031585693 18.73419952392578 8.355389595031738 19.16629981994629 9.175780296325684 19.47660064697266 L 9.509770393371582 21.1914005279541 C 9.601770401000977 21.66139984130859 10.01119995117188 22 10.49020004272461 22 L 13.50979995727539 22 C 13.98880004882812 22 14.39820003509521 21.66139984130859 14.49020004272461 21.1914005279541 L 14.82419967651367 19.47660064697266 C 15.64500045776367 19.16620063781738 16.40390014648438 18.73259925842285 17.07029914855957 18.18549919128418 L 18.71479988098145 18.75200080871582 C 19.16780090332031 18.90800094604492 19.66629981994629 18.72159957885742 19.90629959106445 18.30660057067871 L 21.41410064697266 15.69139957427979 C 21.65309906005859 15.27639961242676 21.56609916687012 14.75150012969971 21.20509910583496 14.4375 L 19.88669967651367 13.29100036621094 C 19.95529937744141 12.86970043182373 20 12.44069957733154 20 12 C 20 11.55930042266846 19.95529937744141 11.13029956817627 19.88669967651367 10.70899963378906 L 21.20509910583496 9.5625 C 21.56609916687012 9.248499870300293 21.65309906005859 8.721639633178711 21.41410064697266 8.306639671325684 L 19.90629959106445 5.693359851837158 C 19.66720008850098 5.278359889984131 19.16780090332031 5.091090202331543 18.71479988098145 5.246089935302734 L 17.07029914855957 5.8125 C 16.40410041809082 5.265789985656738 15.64459991455078 4.833660125732422 14.82419967651367 4.523439884185791 L 14.49020004272461 2.808589935302734 C 14.39820003509521 2.338589906692505 13.98880004882812 2 13.50979995727539 2 L 10.49020004272461 2 Z M 12 8 C 14.20899963378906 8 16 9.791000366210938 16 12 C 16 14.20899963378906 14.20899963378906 16 12 16 C 9.791000366210938 16 8 14.20899963378906 8 12 C 8 9.791000366210938 9.791000366210938 8 12 8 Z" fill="#fffcfc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fp7nz =
    '<svg viewBox="33.0 746.4 41.0 35.3" ><path transform="translate(31.0, 742.36)" d="M 6.099999904632568 4 C 3.85678768157959 4 2 5.997725486755371 2 8.411209106445312 L 2 34.87846374511719 C 2 37.29205703735352 3.85678768157959 39.2896728515625 6.099999904632568 39.2896728515625 L 38.90000152587891 39.2896728515625 C 41.14331436157227 39.2896728515625 43 37.29205703735352 43 34.87846374511719 L 43 12.82241821289062 C 43 10.40893459320068 41.14331436157227 8.411209106445312 38.90000152587891 8.411209106445312 L 22.49999809265137 8.411209106445312 L 18.39999961853027 4 L 6.099999904632568 4 Z M 6.099999904632568 8.411209106445312 L 16.70235252380371 8.411209106445312 L 20.80239295959473 12.82241821289062 L 38.90000152587891 12.82241821289062 L 38.90000152587891 34.87846374511719 L 6.099999904632568 34.87846374511719 L 6.099999904632568 8.411209106445312 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
