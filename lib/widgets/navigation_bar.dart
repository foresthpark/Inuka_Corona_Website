import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 60,
//            width: 60,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem(title: "Episodes"),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(title: "About"),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({@required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(title, style: TextStyle(fontSize: 18));
  }
}
