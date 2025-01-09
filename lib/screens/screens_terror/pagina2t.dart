import 'package:flutter/material.dart';
import 'package:youtube_player_embed/controller/video_controller.dart';
import 'package:youtube_player_embed/enum/video_state.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

void main() => runApp(const Pagina2t());

class Pagina2t extends StatefulWidget {
  const Pagina2t({super.key});

  @override
  State<Pagina2t> createState() => _MyAppState();
}

class _MyAppState extends State<Pagina2t> {
  final List<String> listOfVideos = ["vESLWJYVZto", "3vPbzEhF63s"]; 
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
      title: 'Hereditary', 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hereditary'), 
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
        ),
        backgroundColor: Colors.black, 
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget para el reproductor de YouTube
            YoutubePlayerEmbed(
              key: ValueKey(currentPlayingVideo), 
              callBackVideoController: (controller) {
                videoController = controller; 
              },
              videoId: currentPlayingVideo, 
              customVideoTitle: "Hereditary", 
              autoPlay: false, 
              hidenVideoControls: false, 
              mute: false, 
              enabledShareButton: false, 
              hidenChannelImage: true, 
              aspectRatio: 16 / 9, 
              onVideoEnd: () {
                // Cuando el video termina
                if (listOfVideos.isNotEmpty) {
                  setState(() {
                    currentPlayingVideo = listOfVideos.removeAt(0); 
                  });
                } else {
                  // Mostrar un mensaje si no hay más videos para reproducir
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
                // Detectar cambios de estado del video
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
            // Fila de botones para controlar el video
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
            // Botón para avanzar el video a los 4 segundos
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
