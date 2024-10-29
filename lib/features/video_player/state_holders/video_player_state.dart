import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerState extends ChangeNotifier {
  VideoPlayerController initializeVideoPlayer() {
    late VideoPlayerController videoPlayerController;
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/godofwar.mp4")
          ..initialize().then(
            (value) {
              print("Loaded");
              videoPlayerController.play();
            },
          );
    return videoPlayerController;
  }
}
