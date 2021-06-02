import 'package:example/app/entities/utils/Style.dart';
import 'package:flutter/material.dart';
import 'package:karee/internationalization.dart';
import 'package:karee/widgets.dart';

class DashboardResourcesScreen extends RoutableWidget {
  @override
  Widget builder(BuildContext context, parameter) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('karee.module.resources.title'.translate(), style: Style.moduleTitleStyle)),
            Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'karee.module.resources.details'.translate(),
                  textAlign: TextAlign.justify,
                  style: Style.moduleDetailStyle,
                )),
            Row(children: [
              Icon(Icons.miscellaneous_services, color: Style.dashboardSelectedMenuBorder),
              Text('  ' + 'karee.module.resources.config.title'.translate(),
                  style: TextStyle(color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 18))
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'karee.module.resources.config.detail'.translate(),
                  textAlign: TextAlign.justify,
                  style: Style.moduleItemDetail,
                  textScaleFactor: 1.3,
                )),
            Container(
                decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Image(image: AssetImage('assets/images/config-file.png'))),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text.rich(
                  TextSpan(text: 'eg'.translate(), children: [
                    TextSpan(text: '@Value', style: TextStyle(color: Colors.teal[700])),
                    TextSpan(text: '('),
                    TextSpan(text: '"', style: TextStyle(color: Style.primaryColor)),
                    TextSpan(text: '@{server.proxy.url}', style: TextStyle(color: Style.primaryColor)),
                    TextSpan(text: '"', style: TextStyle(color: Style.primaryColor)),
                    TextSpan(text: ')\n'),
                    TextSpan(text: 'late final ', style: TextStyle(color: Style.primaryDashboardColor)),
                    TextSpan(text: 'String ', style: TextStyle(color: Colors.teal[700])),
                    TextSpan(
                      text: 'serverUrl ;',
                    ),
                  ]),
                )),
            Row(children: [
              Icon(Icons.settings_ethernet_rounded, color: Style.dashboardSelectedMenuBorder),
              Text('  ' + 'karee.module.resources.locale.title'.translate(),
                  //'karee.module.resources.variable.title'.translate(),
                  style: TextStyle(color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 18))
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(children: [
                  Text(
                    'karee.module.resources.locale.detail'.translate(),
                    // "karee.module.resources.variable.detail".translate(),
                    textAlign: TextAlign.justify,
                    style: Style.moduleItemDetail,
                    textScaleFactor: 1.3,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Row(children: [
                        Icon(Icons.language, color: Style.dashboardSelectedMenuBorder),
                        Text('  ' + 'karee.module.resources.locale.step1'.translate(),
                            style: TextStyle(
                                color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 16))
                      ])),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Image(image: AssetImage('assets/images/lang.png'))),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Row(children: [
                        Icon(Icons.translate, color: Style.dashboardSelectedMenuBorder),
                        Text('  ' + 'karee.module.resources.locale.step2'.translate(),
                            style: TextStyle(
                                color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 16))
                      ])),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Image(image: AssetImage('assets/images/translations.png'))),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Row(children: [
                        Icon(Icons.edit_outlined, color: Style.dashboardSelectedMenuBorder),
                        Text('  ' + 'karee.module.resources.locale.step3'.translate(),
                            style: TextStyle(
                                color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 16))
                      ])),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Image(image: AssetImage('assets/images/traductions-usage.png'))),
                ])),
          ])),
    );
  }
}
