import 'package:flutter/material.dart';
import 'package:youtube_player_embed/controller/video_controller.dart';
import 'package:youtube_player_embed/enum/video_state.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

void main() => runApp(const Pagina3c1());

class Pagina3c1 extends StatefulWidget {
  const Pagina3c1({super.key});

  @override
  State<Pagina3c1> createState() => _MyAppState();
}

class _MyAppState extends State<Pagina3c1> {
  final List<String> listOfVideos = ["gCcx85zbxz4", "3vPbzEhF63s"];
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
      title: 'Blade Runner 2049',
      theme: ThemeData.dark().copyWith( 
        scaffoldBackgroundColor: Colors.black, 
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, 
          iconTheme: IconThemeData(color: Colors.white), 
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Blade Runner 2049'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reproductor de YouTube
            YoutubePlayerEmbed(
              key: ValueKey(currentPlayingVideo), 
              callBackVideoController: (controller) {
                videoController = controller;
              },
              videoId: currentPlayingVideo,
              customVideoTitle: "Blade Runner 2049",
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
            // Controles de video
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: videoController != null
                      ? () async {
                          await videoController?.playVideo();
                        }
                      : null, 
                  child: const Text("Play"),
                ),
                const SizedBox(width: 20), 
                ElevatedButton(
                  onPressed: videoController != null
                      ? () async {
                          await videoController?.pauseVideo();
                        }
                      : null, 
                  child: const Text("Pause"),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: videoController != null
                      ? () async {
                          await videoController?.muteOrUnmuteVideo();
                        }
                      : null, 
                  child: const Text("Mute / Unmute"),
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: videoController != null
                  ? () async {
                      await videoController?.seekTo(time: 4); 
                    }
                  : null, 
              child: const Text("Seek to 4 seconds (for test)"),
            ),
          ],
        ),
      ),
    );
  }
}
