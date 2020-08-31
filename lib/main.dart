import 'package:flutter/material.dart';
import 'package:flutter_appsi/Home.dart';

void main() {
  runApp(MaterialApp(
    home: MyCustomForm(),
  ));
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  final pass = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 330,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  border: new Border.all(
                      color: Colors.blue[100],
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(
                    40.0,
                  ),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.blue[600],
                        offset: new Offset(8.0, 3.0),
                        blurRadius: 40.0,
                        spreadRadius: 10.0),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 50.0),
                        Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'veg',
                              letterSpacing: 2.0,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[400]),
                        ),
                        SizedBox(height: 80.0),
                        Container(
                          width: 260,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: new Border.all(
                                color: Colors.blue[200],
                                width: 4.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(
                              40.0,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.blue[100],
                                  offset: new Offset(8.0, 3.0),
                                  blurRadius: 40.0,
                                  spreadRadius: 10.0),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.face,
                                    color: Colors.grey[50],
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                      width: 180, // do it in both Container
                                      child: SingleChildScrollView(
                                        physics: NeverScrollableScrollPhysics(),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            TextField(
                                              controller: myController,
                                              maxLength: 15,
                                              autofocus: false,
                                              obscureText: false,
                                              style: TextStyle(
                                                  letterSpacing: 1.0,
                                                  height: 0.7,
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                  fontFamily: 'thin',
                                                  fontWeight: FontWeight.bold),
                                              decoration: InputDecoration(
                                                hintText: "Username",
                                                hintStyle: TextStyle(
                                                    height: 0.7,
                                                    color: Colors.blueGrey[100],
                                                    letterSpacing: 1.0,
                                                    fontFamily: 'thin',
                                                    fontWeight:
                                                        FontWeight.bold),
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Container(
                          width: 260,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: new Border.all(
                                color: Colors.blue[200],
                                width: 4.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(
                              40.0,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.blue[100],
                                  offset: new Offset(8.0, 3.0),
                                  blurRadius: 40.0,
                                  spreadRadius: 10.0),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10.0),
                              Icon(
                                Icons.lock_outline,
                                color: Colors.grey[50],
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                  width: 180, // do it in both Container
                                  child: SingleChildScrollView(
                                    physics: NeverScrollableScrollPhysics(),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextField(
                                          controller: pass,
                                          autofocus: false,
                                          obscureText: true,
                                          style: TextStyle(
                                              letterSpacing: 1.0,
                                              height: 0.7,
                                              fontSize: 20.0,
                                              color: Colors.white,
                                              fontFamily: 'thin',
                                              fontWeight: FontWeight.bold),
                                          decoration: InputDecoration(
                                            hintText: "Password",
                                            hintStyle: TextStyle(
                                                height: 0.7,
                                                color: Colors.blueGrey[100],
                                                letterSpacing: 1.0,
                                                fontFamily: 'thin',
                                                fontWeight: FontWeight.bold),
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Container(
                            decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.blue[300],
                                    offset: new Offset(3.0, 6.0),
                                    blurRadius: 30.0,
                                    spreadRadius: 6.0),
                              ],
                            ),
                            child: FlatButton(
                              padding:
                                  EdgeInsets.fromLTRB(40.0, 13.0, 40.0, 13.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.blue[300]),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                );
                                var user = myController.text;
                                print(user);
                                var passw = pass.text;
                                print(passw);
                              },
                              color: Colors.blue[400],
                              textColor: Colors.white,
                              child: Text("Log-In",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'bold',
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
