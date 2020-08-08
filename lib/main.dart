import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(X1());
}

class X1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigator app'),
          // backgroundColor: Colors.deepOrange.shade200,
          leading: Icon(
            Icons.album,
            color: Colors.red,
            size: 30,
          ),
        ),
        backgroundColor: Colors.grey,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: RaisedButton(
                  child: Text('Images'),
                  color: Colors.amber.shade300,
                  onPressed: () => print('hii'),
                ),
                minWidth: 150,
                height: 150,
              ),
              SizedBox(
                width: 10,
              ),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: RaisedButton(
                  child: Text('Audio'),
                  color: Colors.amber.shade300,
                  onPressed: () => print('hlw'),
                ),
                minWidth: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
