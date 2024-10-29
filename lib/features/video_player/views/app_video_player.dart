import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:vid_player/features/video_player/state_holders/video_player_state.dart';
import 'package:video_player/video_player.dart';

class AppVideoPlayer extends StatefulWidget {
  const AppVideoPlayer({super.key});

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  VideoPlayerController? _videoPlayerController;

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.orientationOf(context);
    if(orientation == Orientation.landscape){
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    }
    return Scaffold(
        appBar: orientation == Orientation.portrait ? AppBar(
          title: const Text("VidPlayer"),
        ) : null,
      body: Consumer<VideoPlayerState>(builder: (_,videoPlayerState,__){
        return VideoPlayer(videoPlayerState.initializeVideoPlayer());
      })
    );
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    super.dispose();
  }
}
