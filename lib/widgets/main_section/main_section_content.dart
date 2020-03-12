import 'package:flutter/material.dart';

class MainSectionContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String body;

  MainSectionContent(
      {@required this.title, this.subtitle, @required this.body});

  @override
  Widget build(BuildContext context) {
    if (subtitle != null) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 0.9, fontSize: 80),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 0.9, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              body,
              style: TextStyle(fontSize: 21, height: 1.7),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 0.9, fontSize: 80),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              body,
              style: TextStyle(fontSize: 21, height: 1.7),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      );
    }
  }
}
