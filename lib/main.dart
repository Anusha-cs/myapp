import 'video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: home_page(),
      routes: {
        '/audio': (context) => assets_audio(),
        '/video': (context) => onvideo(),
      },
    );
  }
}

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Multi Media')),
        backgroundColor: Colors.pink[300],
        actions: [Icon(Icons.music_video)],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
          ),
          image: DecorationImage(
            image: AssetImage("images/home.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/audio');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.music_note),
                          Text(
                            'Audio',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.transparent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/video');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.video_library),
                                Text(
                                  'video',
                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
