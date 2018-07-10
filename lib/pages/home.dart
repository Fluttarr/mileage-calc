import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Card(
      elevation: 2.5,
      color: Colors.white,
      child: new SizedBox(
          height: 350.0,
          child: new Container(
              padding: EdgeInsets.all(20.0),
              child: Form(
                child: new ListView(
                  children: <Widget>[
                    new TextFormField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          fillColor: Colors.black,
                          hintText: 'No. of litres',
                          labelText: 'Litres'),
                    ),
                    new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          hintText: 'From Kilometer', labelText: 'Kilometers'),
                    ),
                    new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          hintText: 'To Kilometer', labelText: 'Kilometers'),
                    ),
                    new RaisedButton(
                        padding: EdgeInsets.all(10.0),
                        textColor: Colors.black,
                        child: new Text("Calculate"),
                        onPressed: () => AlertDialog(
                              title: new Text("Pressed"),
                              content: new Text("data"),
                            ))
                  ],
                ),
              ))),
    );
  }
}
