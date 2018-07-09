import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Center(
      child: new Form(
        child: new ListView(
          children: <Widget>[
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: 'Enter Value', labelText: 'Litres'),
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: 'Enter Value', labelText: 'kilometer'),
            )
          ],
        ),
      ),
    );
  }
}
