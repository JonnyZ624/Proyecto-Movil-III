import 'package:flutter/material.dart';
import 'package:youtube_player_embed/controller/video_controller.dart';
import 'package:youtube_player_embed/enum/video_state.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

void main() => runApp(const Pagina3a());

class Pagina3a extends StatefulWidget {
  const Pagina3a({super.key});

  @override
  State<Pagina3a> createState() => _MyAppState();
}

class _MyAppState extends State<Pagina3a> {
  final List<String> listOfVideos = ["mj4dVlxhfA4", "3vPbzEhF63s"];
  String currentPlayingVideo = "";
  VideoController? videoController;

  @override
  void initState() {
    super.initState();
    currentPlayingVideo = listOfVideos.removeAt(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avengers: Endgame',
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Avengers: Endgame', style: TextStyle(color: Colors.white)), 
          backgroundColor: Colors.black, 
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white), 
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
        ),
        body: Container(
          color: Colors.black, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              YoutubePlayerEmbed(
                key: ValueKey(currentPlayingVideo), 
                callBackVideoController: (controller) {
                  videoController = controller;
                },
                videoId: currentPlayingVideo,
                customVideoTitle: "Avengers: Endgame",
                autoPlay: false,
                hidenVideoControls: false,
                mute: false,
                enabledShareButton: false,
                hidenChannelImage: true,
                aspectRatio: 16 / 9,
                onVideoEnd: () {
                  if (listOfVideos.isNotEmpty) {
                    setState(() {
                      currentPlayingVideo = listOfVideos.removeAt(0);
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('No more videos to play!')),
                    );
                  }
                },
                onVideoSeek: (currentTime) =>
                    print("Seeked to $currentTime seconds"),
                onVideoTimeUpdate: (currentTime) =>
                    print("Current time: $currentTime seconds"),
                onVideoStateChange: (state) {
                  switch (state) {
                    case VideoState.playing:
                      print("Video is playing");
                      break;
                    case VideoState.paused:
                      print("Video is paused");
                      break;
                    case VideoState.muted:
                      print("Video is muted");
                      break;
                    case VideoState.unmuted:
                      print("Video is unmuted");
                      break;
                    case VideoState.fullscreen:
                      print("Video is in fullscreen");
                      break;
                    case VideoState.normalView:
                      print("Video is in normal view");
                      break;
                  }
                },
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await videoController?.playVideo();
                    },
                    child: const Text("Play"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await videoController?.pauseVideo();
                    },
                    child: const Text("Pause"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await videoController?.muteOrUnmuteVideo();
                    },
                    child: const Text("Mute / Unmute"),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  await videoController?.seekTo(time: 4);
                },
                child: const Text("Seek to 4 seconds (for test)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
