import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

main() {
  runApp(MaterialApp(
    home: X1(),
    debugShowCheckedModeBanner: false,
  ));
}

class X1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {
                    print('hii');
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => imagePage2()));
                  },
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
                  onPressed: () {
                    print('hlw');
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => audioPage2()));
                  },
                ),
                minWidth: 150,
                height: 150,
              ),
            ],
          ),
        ));
  }
}

class imagePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image page'),
        leading: Icon(
          Icons.image,
          color: Colors.black,
          size: 35,
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 300,
              height: 400,
              child: Image(
                image: NetworkImage(
                    'https://github.com/jyoti-raj/flutter-basic-app/raw/master/FB_IMG_1466450119795.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('back to home page'),
          )
        ],
      ),
    );
  }
}

class audioPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player Application'),
        leading: Icon(
          Icons.music_note,
          color: Colors.white,
          size: 30,
        ),
      ),
      backgroundColor: Colors.blue.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                    child: FlatButton(
                        onPressed: () {
                          print('skip previous button');
                          Fluttertoast.showToast(
                              msg: 'No futher song is added',
                              toastLength: Toast.LENGTH_SHORT,
                              backgroundColor: Colors.blueAccent,
                              gravity: ToastGravity.BOTTOM);
                        },
                        child: Icon(
                          Icons.skip_previous,
                          color: Colors.black,
                        ))),
                Card(
                    child: FlatButton(
                        onPressed: () {
                          print('This is play arr0w');
                          Card(
                            child: Icon(
                              Icons.pause,
                              color: Colors.black,
                            ),
                          );
                          var audio = AudioCache();
                          audio.play('lal_ishq.mp3');
                        },
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ))),
                Card(
                    child: FlatButton(
                  onPressed: () {
                    print('skip next button');
                    Fluttertoast.showToast(
                        msg: 'No futher song is added',
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: Colors.blueAccent,
                        gravity: ToastGravity.BOTTOM);
                  },
                  child: Icon(Icons.skip_next, color: Colors.black),
                )),
              ],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('back to home page'),
            )
          ],
        ),
      ),
      // Card(
      //       child: FlatButton(
      //           onPressed: () => print('Shuffle button'),
      //           child: Icon(
      //             Icons.shuffle,
      //             color: Colors.black,
      //           )),
      //     ),
    );
  }
}
