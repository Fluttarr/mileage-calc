import 'package:flutter/material.dart';
import 'package:mileage_calculator/pages/nav_drawer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final appTitle = 'Mileage calculator';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTitle,
        home: new NavPage(),
        theme: ThemeData(
          primaryColor: Color(0xFF3366FF),
          accentColor: Colors.cyan[600],
        ));
  }
}

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Center(child: Text('Default')),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the Drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Hello'),
//               decoration: BoxDecoration(
//                 color: Colors.orange,
//               ),
//             ),
//             ListTile(
//               title: Text('Home'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text('About us'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
