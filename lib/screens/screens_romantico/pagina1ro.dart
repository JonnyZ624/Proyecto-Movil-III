import 'package:flutter/material.dart';
import 'package:youtube_player_embed/controller/video_controller.dart';
import 'package:youtube_player_embed/enum/video_state.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

void main() => runApp(const Pagina1ro());

class Pagina1ro extends StatefulWidget {
  const Pagina1ro({super.key});

  @override
  State<Pagina1ro> createState() => _MyAppState();
}

class _MyAppState extends State<Pagina1ro> {
  final List<String> listOfVideos = ["SI03fuR7wJ4", "3vPbzEhF63s"];
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
      title: 'The Notebook',
      theme: ThemeData.dark(), // Aplicando el tema oscuro aquí
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The Notebook'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Volver a la pantalla anterior
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Video Player
            YoutubePlayerEmbed(
              key: ValueKey(currentPlayingVideo), // Unique key for the video
              callBackVideoController: (controller) {
                videoController = controller;
              },
              videoId: currentPlayingVideo,
              customVideoTitle: "The Notebook",
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
            // Control buttons with spacing
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
            // Seek button
            ElevatedButton(
              onPressed: () async {
                await videoController?.seekTo(time: 4);
              },
              child: const Text("Seek to 4 seconds (for test)"),
            ),
          ],
        ),
      ),
    );
  }
}
