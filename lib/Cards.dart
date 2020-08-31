import 'package:flutter/material.dart';
import 'package:flutter_appsi/Home.dart';

class Cards extends StatefulWidget {
  String url = '';

  Cards(
      {@required String url,
      @required double price,
      @required String productName});

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                border: new Border.all(
                    color: Colors.blue[100],
                    width: 2.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(
                  20.0,
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
                      SizedBox(height: 18.0),
                      Padding(
                        padding: EdgeInsets.all(3),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(widget.url)),
                      ),
                      SizedBox(height: 0.0),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'product',
                                style: TextStyle(
                                    fontFamily: 'thin',
                                    letterSpacing: 1.0,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[400]),
                              ),
                              SizedBox(height: 3.0),
                              Text(
                                '₹ ',
                                style: TextStyle(
                                    fontFamily: 'bold',
                                    letterSpacing: 1.0,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey[300]),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 145.0,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blue[100],
                                    offset: new Offset(3.0, 6.0),
                                    blurRadius: 40.0,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.blue[300],
                                  ),
                                  onPressed: () {
                                    /* Navigator.push(
                                context,
                               MaterialPageRoute(builder: (context) => MyCustomForm()),
                              ); */
                                  }))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
