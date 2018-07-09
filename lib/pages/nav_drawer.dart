import 'package:flutter/material.dart';

import 'package:mileage_calculator/pages/home.dart';
import 'package:mileage_calculator/pages/settings_page.dart';
import 'package:mileage_calculator/pages/contact_us.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class NavPage extends StatefulWidget {
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

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomePage();
      case 1:
        return new SettingsPage();
      case 2:
        return new ContactUsPage();
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
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Hey Buddy!"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
