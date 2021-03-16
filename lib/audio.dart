import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class assets_audio extends StatelessWidget {
  AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Audio Player")),
          backgroundColor: Colors.pinkAccent,
          actions: [Icon(Icons.music_note)],
        ),
        body: Center(
          child: Container(
            // width: 400,
            // height: 400,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
              image: DecorationImage(
                  image: AssetImage("images/fav.gif"), fit: BoxFit.fill),
            ),

            child: Center(
              child: Center(
                child: Center(
                  child: Column(children: [
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        width: 250,
                        height: 250,
                        padding: EdgeInsets.all(100),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pinkAccent,
                            width: 5,
                          ),
                          image: DecorationImage(
                              image: AssetImage("images/khariyat.jpeg"),
                              fit: BoxFit.fill),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(15)),
                          Center(
                            child: RaisedButton(
                              color: Colors.black12,
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.pinkAccent,
                              ),
                              onPressed: () async {
                                audioPlayer =
                                    await AudioCache().loop("Khairiyat.mp3");
                                print("play");
                              },
                            ),
                          ),
                          Center(
                            child: RaisedButton(
                              color: Colors.black12,
                              child: Icon(
                                Icons.pause,
                                color: Colors.pinkAccent,
                              ),
                              onPressed: () async {
                                await audioPlayer.pause();
                                print("pause");
                              },
                            ),
                          ),
                          Center(
                            child: RaisedButton(
                              color: Colors.black12,
                              child: Icon(
                                Icons.stop,
                                color: Colors.pinkAccent,
                              ),
                              onPressed: () async {
                                await audioPlayer.stop();
                                print("Stop");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            'Chhichhore-Khairiyat',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.italic,
                                color: Colors.pinkAccent.withOpacity(1.0)),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
