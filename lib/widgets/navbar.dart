import 'package:flutter_web/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navLinks = [
    {"text": "Programmer", "color": Color(0xFFe8717f)},
    {"text": "Designer", "color": Colors.white},
    {"text": "Manager", "color": Colors.white},
    {"text": "QA Enginner", "color": Colors.white}
  ];

  List<Widget> navItem() {
    return navLinks.map((item) {
      return Padding(
        padding: EdgeInsets.only(left: 50),
        child: Listener(
          onPointerMove: (e) {
            print("11111");
          },
          child: InkWell(
            onTap: () {
              navLinks.map((_item) {
                _item["color"] = Colors.white;
              });
              navLinks.firstWhere((item) {
                return item["color"] == Color(0xFFe8717f);
              })["color"] = Colors.white;
              item["color"] = Color(0xFFe8717f);
              setState(() {});
            },
            child: Text(
              item["text"],
              style: TextStyle(color: item["color"]),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.network(
                "assets/logo.png",
                scale: 1.2,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Shakuro",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF564e65),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ...navItem(),
              ]..add(
                  InkWell(
                    onTap: () {},
                    child: Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Container(
                          width: 100,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                  color: Color(0xFFe8717f), width: 2.0)),
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}
