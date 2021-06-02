import 'package:example/app/entities/utils/Style.dart';
import 'package:flutter/material.dart';
import 'package:karee/internationalization.dart';
import 'package:karee/widgets.dart';

class DashboardRoutageScreen extends RoutableWidget {
  @override
  Widget builder(BuildContext context, parameter) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('karee.module.routage.title'.translate(), style: Style.moduleTitleStyle)),
            Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'karee.module.routage.details'.translate(),
                  textAlign: TextAlign.justify,
                  style: Style.moduleDetailStyle,
                )),
            Row(children: [
              Icon(Icons.navigation_rounded, color: Style.dashboardSelectedMenuBorder),
              Text('  ' + 'karee.module.routage.url.title'.translate(),
                  style: TextStyle(color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 18))
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'karee.module.routage.url.detail'.translate(),
                  textAlign: TextAlign.justify,
                  style: Style.moduleItemDetail,
                  textScaleFactor: 1.3,
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text.rich(
                  TextSpan(text: 'eg'.translate(), children: [
                    TextSpan(text: '/users/', style: TextStyle(color: Colors.teal[700])),
                    TextSpan(text: '{userId}', style: TextStyle(color: Style.primaryColor)),
                    TextSpan(text: '/message/', style: TextStyle(color: Colors.teal[700])),
                    TextSpan(text: '{messageId}', style: TextStyle(color: Style.primaryColor)),
                  ]),
                )),
            Container(
                decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Image(image: AssetImage('assets/images/routage-url.png'))),
            Row(children: [
              Icon(Icons.integration_instructions_outlined, color: Style.dashboardSelectedMenuBorder),
              Text('  ' + 'karee.module.routage.internal.title'.translate(),
                  //'karee.module.routage.variable.title'.translate(),
                  style: TextStyle(color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 18))
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(children: [
                  Text(
                    "    " + 'karee.module.routage.internal.detail'.translate(),
                    // "karee.module.routage.variable.detail".translate(),
                    textAlign: TextAlign.justify,
                    style: Style.moduleItemDetail,
                    textScaleFactor: 1.3,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Row(children: [
                        Icon(Icons.settings_input_composite_rounded, color: Style.dashboardSelectedMenuBorder),
                        Text('  ' + 'karee.module.routage.internal.step1'.translate(),
                            style: TextStyle(
                                color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 16))
                      ])),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Image(image: AssetImage('assets/images/routage-set-router.png'))),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Row(children: [
                        Icon(Icons.send_rounded, color: Style.dashboardSelectedMenuBorder),
                        Text('  ' + 'karee.module.routage.internal.step2'.translate(),
                            style: TextStyle(
                                color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 16))
                      ])),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Image(image: AssetImage('assets/images/routage-setup-routablewidget.png'))),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Image(image: AssetImage('assets/images/routage-load-route.png'))),
                ])),
          ])),
    );
  }
}
