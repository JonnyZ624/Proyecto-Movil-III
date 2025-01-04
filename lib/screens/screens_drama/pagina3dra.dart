import 'package:flutter/material.dart';
import 'package:youtube_player_embed/controller/video_controller.dart';
import 'package:youtube_player_embed/enum/video_state.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

void main() => runApp(const Pagina3dra());

class Pagina3dra extends StatefulWidget {
  const Pagina3dra({super.key});

  @override
  State<Pagina3dra> createState() => _MyAppState();
}

class _MyAppState extends State<Pagina3dra> {
  final List<String> listOfVideos = ["eZHsmb4ezEk", "3vPbzEhF63s"];
  String currentPlayingVideo = "";
  VideoController? videoController;
  bool isVideoReady = false; // To track if the video is ready for controls

  @override
  void initState() {
    super.initState();
    currentPlayingVideo = listOfVideos.removeAt(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Godfather',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The Godfather'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Go back to the previous screen
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Video Player
            YoutubePlayerEmbed(
              key: ValueKey(currentPlayingVideo),
              callBackVideoController: (controller) {
                videoController = controller;
                setState(() {
                  isVideoReady = true; // Video is ready
                });
              },
              videoId: currentPlayingVideo,
              customVideoTitle: "The Godfather",
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
            // Control buttons
            isVideoReady
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          await videoController?.playVideo();
                        },
                        child: const Text("Play"),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () async {
                          await videoController?.pauseVideo();
                        },
                        child: const Text("Pause"),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () async {
                          await videoController?.muteOrUnmuteVideo();
                        },
                        child: const Text("Mute / Unmute"),
                      ),
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(), // Show loading spinner
                  ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: isVideoReady
                  ? () async {
                      await videoController?.seekTo(time: 4);
                    }
                  : null, // Disabled until the video is ready
              child: const Text("Seek to 4 seconds (for test)"),
            ),
          ],
        ),
      ),
    );
  }
}
