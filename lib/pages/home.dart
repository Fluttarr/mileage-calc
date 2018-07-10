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
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          fillColor: Colors.black,
                          hintText: 'No. of litres',
                          labelText: 'Litres'),
                    ),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                        child: new TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            hintText: 'From Kilometer',
                          ),
                        )),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                        child: new TextFormField(
                          keyboardType: TextInputType.number,
                          decoration:
                              new InputDecoration(hintText: 'To Kilometer'),
                        )),
                    new Padding(
                        padding: EdgeInsets.all(20.0),
                        child: new RaisedButton(
                            color: const Color(0xFF3366FF),
                            padding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 18.0),
                            elevation: 9.0,
                            textColor: Colors.white,
                            child: new Text("Calculate"),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
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
