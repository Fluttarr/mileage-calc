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
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    // new
                    // Where the linear gradient begins and ends
                    colors: [
                      const Color(0xFFF),
                      const Color(0xFFF),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
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
                    new Padding(
                        padding: EdgeInsets.all(20.0),
                        child: new RaisedButton(
                            elevation: 5.0,
                            padding: EdgeInsets.all(10.0),
                            textColor: Colors.black,
                            child: new Text("Calculate"),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => new AlertDialog(
                                        title: new Text("Hey"),
                                        content: new Text("Nothing Here"),
                                      ));
                            }))
                  ],
                ),
              ))),
    );
  }
}
