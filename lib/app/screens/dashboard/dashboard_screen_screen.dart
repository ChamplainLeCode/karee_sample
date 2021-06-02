import 'package:example/app/entities/utils/Style.dart';
import 'package:flutter/material.dart';
import 'package:karee/internationalization.dart';
import 'package:karee/widgets.dart';

class DashboardScreenTabScreen extends RoutableWidget {
  @override
  Widget builder(BuildContext context, parameter) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('karee.module.screen.title'.translate(), style: Style.moduleTitleStyle)),
            Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Au plus haut niveau dans l'affichage d'une page, le composant principale doit être un descendant d'un PAGE KAREE. Celles-ci sont de deux types, les StatelessScreen et les StatefulScreen",
                  // 'karee.module.screen.details'.translate(),
                  textAlign: TextAlign.justify,
                  style: Style.moduleDetailStyle,
                )),
            Row(children: [
              Icon(Icons.lens_outlined, color: Style.dashboardSelectedMenuBorder),
              Text('  ' + 'Les StatelessScreen', //'karee.module.screen.url.title'.translate(),
                  style: TextStyle(color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 18))
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "La class StatelessScreen est une classe descendante de StatelessWidget, et offrant une portée globale au CONTEXT (context), au MEDIA_QUERY sans employer le context (mediaQuery) et aux dimensions de l'écran (screenSize)",
                  // 'karee.module.screen.stls.detail'.translate(),
                  textAlign: TextAlign.justify,
                  style: Style.moduleItemDetail,
                  textScaleFactor: 1.3,
                )),
            Text('eg'.translate()),
            Container(
                decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Image(image: AssetImage('assets/images/screen-stl-eg.png'))),
            Row(children: [
              Icon(Icons.lens, color: Style.dashboardSelectedMenuBorder),
              Text('  ' + 'Les StatefulScreen', //'karee.module.screen.internal.title'.translate(),
                  //'karee.module.screen.variable.title'.translate(),
                  style: TextStyle(color: Style.dashboardSelectedMenuBorder, fontWeight: FontWeight.w400, fontSize: 18))
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(children: [
                  Text(
                    "    " +
                        "Ce type d'écran hérite des StatefulWidget et a les mêmes propriétes que les StatelessScreen.",
                    //  'karee.module.screen.internal.detail'.translate(),
                    textAlign: TextAlign.justify,
                    style: Style.moduleItemDetail,
                    textScaleFactor: 1.3,
                  ),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Style.dashboardSelectedMenuBorder, width: 2)),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Image(image: AssetImage('assets/images/screen-stf-eg.png'))),
                ])),
          ])),
    );
  }
}
