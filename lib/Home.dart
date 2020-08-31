import 'package:flutter/material.dart';
import 'package:flutter_appsi/main.dart';
import 'package:flutter_appsi/Cards.dart';


void main() {

  runApp(MaterialApp(
    home:Home() ,
  ));
}



class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _Home extends State<Home> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  //url of the image
  var url1='https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRSbN22QRsBApvGVcdCh3LS2nCAH9Qi-ndCww&usqp=CAU';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue[100],
      body: Center(
        child: cards(url1,'product','price'),
      ),
    );
  }
}




