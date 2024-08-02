import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final videoURL = "https://youtube.com/shorts/R2mxO61QIyI?si=UIl5nTzc13XXp4RC";
  late YoutubePlayerController playerController;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoURL);
    playerController = YoutubePlayerController(initialVideoId: videoId!,
    flags: const YoutubePlayerFlags(autoPlay: false)

    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Play"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView(children: [
          YoutubePlayer(controller: playerController),
        ],),
      ),
    );
  }
}
