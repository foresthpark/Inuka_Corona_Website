import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  String dropdownString = "English";

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
              _NavigationBarItem(title: "Episodes"),
              SizedBox(
                width: 60,
              ),
              _NavigationBarItem(title: "About"),
              SizedBox(
                width: 60,
              ),
              DropdownButton<String>(
                value: dropdownString,
                onChanged: (String item) {
                  setState(() {
                    dropdownString = item;
                  });
                },
                items: <String>["English", "Korean", "Japanese", "Chinese"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  final String title;
  const _NavigationBarItem({@required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(title, style: TextStyle(fontSize: 18));
  }
}
