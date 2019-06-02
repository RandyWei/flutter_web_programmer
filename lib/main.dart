import 'package:flutter_web/material.dart';

import 'widgets/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Programmer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Web Programmer'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            height: 800,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Image.network(
                    "assets/top_right_background.png",
                    scale: 1.4,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(
                      "assets/bottom_left_background.png",
                      scale: 1.4,
                    ),
                    Image.network(
                      "assets/bottom_right_background.png",
                      scale: 1.4,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: <Widget>[NavBar(), Body()],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Freelance\nProgrammer",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color(0xFF564e65),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Freelancing is a viable option for programmers "
              "\ninterested in earing additional income while "
              "\nemployed or staring a full-time business in the future",
              style: TextStyle(
                color: Color(0xFFa9a7ac),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "LEAR MORE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  letterSpacing: 1,
                ),
              ),
              color: Color(0xFFe96f7e),
              textColor: Colors.white,
            ),
            Opacity(
              opacity: 0,
              child: Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xFFe96f7e),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFe96f7e).withOpacity(.3),
                        offset: Offset(0, 8),
                        blurRadius: 50,
                      )
                    ]),
                child: Center(
                  child: Text(
                    "LEARN MORE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
