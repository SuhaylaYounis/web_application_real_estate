import 'package:appweb/constants.dart';
import 'package:appweb/widgets/main/main_section.dart';
import 'package:appweb/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appweb/widgets/menu/side_menu_section.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //if the screen isnt desktop let the menu appear
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              ),
            ),
      drawer: side_menu_section(),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1440.0),
          child: Row(
            children: [
              //if the screen is desktop let the side menus appear
              if(Responsive.isDesktop(context))
              Expanded(
                  flex: 2,
                  child: Container(
                    child: const side_menu_section(),
                    color: Colors.white,
                  )),
              Expanded(flex: 7, child: main_section()),
            ],
          ),
        ),
      ),
    );
  }
}
