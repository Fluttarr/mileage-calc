import 'package:flutter/material.dart';

import 'package:mileage_calculator/pages/home.dart';
import 'package:mileage_calculator/pages/settings_page.dart';
import 'package:mileage_calculator/pages/contact_us.dart';
import 'package:mileage_calculator/components/gradient_appbar.dart';

// drawer has these properties which is not important i just copy pasted
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

// for adding page follow step 1 and step 2
class NavPage extends StatefulWidget {
  // step 1: ----> add pages title and icon here
  final drawerItems = [
    new DrawerItem("Mileage Calculator", Icons.home),
    new DrawerItem("Settings", Icons.settings),
    new DrawerItem("About us", Icons.people),
  ];

  @override
  State<StatefulWidget> createState() {
    return new NavPageState();
  }
}

class NavPageState extends State<NavPage> {
  int _selectedDrawerIndex = 0;
  // step 2: ----> add pages class here and new gradient appbar in every case is important
  // new GradientAppBar(title),
  //new YourClass name()

  _getDrawerItemWidget(int pos, String title) {
    switch (pos) {
      case 0:
        return new Column(
          children: <Widget>[
            new GradientAppBar(title),
            new HomePage(),
          ],
        );
      case 1:
        return new Column(
          children: <Widget>[
            new GradientAppBar(title),
            new SettingsPage(),
          ],
        );

      case 2:
        return new Column(
          children: <Widget>[
            new GradientAppBar(title),
            new ContactUsPage(),
          ],
        );
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    return new Scaffold(
      // appBar: new AppBar(
      //   // here we display the title corresponding to the fragment
      //   // you can instead choose to have a static title
      //   title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      // ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xFF3366FF),
                        const Color(0xFF00CCFF)
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                accountName: new Text("Hey Buddy!"),
                accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(
          _selectedDrawerIndex, widget.drawerItems[_selectedDrawerIndex].title),
    );
  }
}
