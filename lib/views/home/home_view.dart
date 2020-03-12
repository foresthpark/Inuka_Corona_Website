import 'package:flutter/material.dart';
import 'package:inuka_corona_tracker_web/widgets/centered_view/centered_view.dart';
import 'package:inuka_corona_tracker_web/widgets/main_details/main_details.dart';
import 'package:inuka_corona_tracker_web/widgets/navigation_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: MainDetails(),
            )
          ],
        ),
      ),
    );
  }
}
