import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vid_player/core/themes/app_theme.dart';
import 'package:vid_player/features/video_player/state_holders/video_player_state.dart';
import 'package:vid_player/features/video_player/views/app_video_player.dart';

class VidPlayer extends StatelessWidget {
  const VidPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => VideoPlayerState()),
      ],
      child: MaterialApp(
        home: const AppVideoPlayer(),
        theme: AppTheme.getLightThemeData(),
      ),
    );
  }
}
