import 'package:flutter/material.dart';
import 'package:inuka_corona_tracker_web/widgets/main_section/main_section_content.dart';
import 'package:markdown/markdown.dart';

class MainDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 5000,
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MainSectionContent(
                title: 'COVID-19 coronavirus info\nfor Albertans',
                body:
                    'Learn about the novel coronavirus (COVID-19) and actions being taken to protect the health of Albertans.',
              ),
              MainSectionContent(
                title: "Current risk in Alberta",
                subtitle: 'The current risk level is low.',
                body:
                    'Risk is determined by assessing how likely Albertans are to be exposed to the virus in the province. While the worldwide risk is rising, the risk of contracting COVID-19 in Alberta is still low. The risk level will be adjusted if this changes in the coming weeks.',
              ),
              MainSectionContent(
                  title: "Cases and testing",
                  subtitle: 'Cases in Alberta and Canada',
                  body:
                      "The cases in Canada have been travel-related and have been isolated to prevent further transmission."),
              Center(child: Image.asset("assets/helpPrevent.png"))
            ],
          ),
        ],
      ),
    );
  }
}
