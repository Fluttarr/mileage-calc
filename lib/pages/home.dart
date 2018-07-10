import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  String firstname;
  String lastname;
  String emailId;
  String mobileno;
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  void _submit() {
    if (this.formKey.currentState.validate()) {
      formKey.currentState.save();
    } else {
      return null;
    }
    print(firstname);
    print(lastname);
    print(mobileno);
    print(emailId);
    // var employee = Employee(firstname, lastname, mobileno, emailId);
    // var dbHelper = DBHelper();
    // dbHelper.saveEmployee(employee);
    // _showSnackBar("Data saved successfully");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Card(
      elevation: 2.5,
      color: Colors.white,
      child: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Form(
          key: formKey,
          child: new Column(
            children: [
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(labelText: 'Starting Reading'),
                validator: (val) =>
                    val.length == 0 ? "Enter Starting Reading" : null,
                onSaved: (val) => this.firstname = val,
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(labelText: 'Ending Reading'),
                validator: (val) =>
                    val.length == 0 ? 'Enter Ending Reading' : null,
                onSaved: (val) => this.lastname = val,
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(labelText: 'Litres'),
                validator: (val) => val.length == 0 ? 'Enter Litres' : null,
                onSaved: (val) => this.mobileno = val,
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(labelText: 'Price'),
                validator: (val) => val.length == 0 ? 'Price' : null,
                onSaved: (val) => this.emailId = val,
              ),
              new Container(
                width: 300.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(30.0),
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
                margin: const EdgeInsets.only(top: 10.0),
                child: new FlatButton(
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: _submit,
                  child: new Text('Calculate'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
