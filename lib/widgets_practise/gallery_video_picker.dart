import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class Videopicker extends StatefulWidget {
  const Videopicker({super.key});

  @override
  State<Videopicker> createState() => _VideopickerState();
}

class _VideopickerState extends State<Videopicker> {
  VideoPlayerController? _videoPlayerController;
  File? _video;
  final picker= ImagePicker();
  _pickVideo()async{
    final video= await picker.pickVideo(source: ImageSource.gallery);
    _video = File(_pickVideo().path);
    _videoPlayerController = VideoPlayerController.file(_video!)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController!.play();

      });
      _videoPlayerController!.play();
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }
  @override
  Widget build(BuildContext context, dynamic _videoPlayerController) {
    return Scaffold(
      appBar: AppBar(
        title: Text('video picker demo'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          if (_video != null)
      _videoPlayerController != null &&
    _videoPlayerController!.value.isInitialized
    ? AspectRatio(
    aspectRatio: _videoPlayerController!.value.aspectRatio,
      child: VideoPlayer(_videoPlayerController!),
    )
        : Container()
    else
    Text('Select video'),
    ElevatedButton(
    onPressed: () {
    _VideopickerState();
    }, child: Text('pick video from galler'))
                
        ],
      ),
    );
  }
}
