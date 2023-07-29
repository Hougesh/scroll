import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyPost5 extends StatefulWidget {
  const MyPost5({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyPost5State createState() => _MyPost5State();
}

class _MyPost5State extends State<MyPost5> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        "C:/Users/houge/OneDrive/Documents/semester 1/SIS 2044Y(ISD) Kishnah/assignment/scroll/lib/posts/5.mp4") // Replace with your actual video file path
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Post 5'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
