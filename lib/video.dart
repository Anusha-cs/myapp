import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
class onvideo extends StatefulWidget {
  @override
  _onvideoState createState() => _onvideoState();
}

// ignore: camel_case_types
class _onvideoState extends State<onvideo> {
  String videurl = "https://youtu.be/Pm77L5Loazc";
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videurl),
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(height: 100),
        SizedBox(height: 100),
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueGrey,
        ),
        SizedBox(
          height: 200,
        ),
      ]),

      //debugShowCheckedModeBanner: false,
    );
  }
}
