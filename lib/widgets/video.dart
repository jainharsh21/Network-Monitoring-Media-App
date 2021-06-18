import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final dynamic video;
  Video({this.video});
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool initialise = false;
  late ChewieController chewieController;
  initData() async {
    final videoPlayerController =
        VideoPlayerController.network(widget.video['video_files'][1]['link']);
    await videoPlayerController.initialize();
    chewieController = ChewieController(
      aspectRatio: 1 / 1,
      allowFullScreen: true,
      videoPlayerController: videoPlayerController,
      autoInitialize: true,
      looping: true,
    );
    setState(() {
      initialise = true;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      initData();
    });
  }

  @override
  void dispose() {
    super.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius : BorderRadius.circular(15.0),
      ),
      elevation: 10.0,
      child: Column(
        children: [
          chewieController.videoPlayerController.value.isInitialized && initialise
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                      aspectRatio: 3 / 4,
                      child: Chewie(controller: chewieController)),
                )
              : SizedBox.shrink(),
          ListTile(
            title: Text(
              "Artist : ${widget.video['user']['name']}",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
          )
        ],
      ),
    );
  }
}
