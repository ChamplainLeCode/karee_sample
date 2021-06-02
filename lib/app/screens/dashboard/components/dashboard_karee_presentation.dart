import 'package:example/app/entities/utils/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:karee/widgets.dart';
import 'package:karee/internationalization.dart';

class DashboardKareePresentation extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return Container(
        child: Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Text('welcome.message'.translateWithParams({'username': 'Karee'}), style: Style.moduleTitleStyle)),
      // Spacer(),
      Text('welcome.message1'.translate(), style: Style.moduleTitleStyle),
      Text('welcome.message2'.translate(), style: Style.moduleTitleStyle),
      Spacer()
    ]));
  }
}
