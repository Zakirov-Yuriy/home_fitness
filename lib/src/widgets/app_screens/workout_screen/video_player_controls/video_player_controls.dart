import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerControls extends StatefulWidget {
  final VideoPlayerController controller;

  const VideoPlayerControls({super.key, required this.controller});

  @override
  VideoPlayerControlsState createState() => VideoPlayerControlsState();
}

class VideoPlayerControlsState extends State<VideoPlayerControls> {
  late Timer _timer;
  bool _hideControls = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (!_hideControls) {
        setState(() {
          _hideControls = true;
        });
      }
    });

    widget.controller.addListener(() {
      if (widget.controller.value.isPlaying) {
        _timer.cancel(); // Останавливаем таймер при воспроизведении
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _hideControls = !_hideControls;
            });
          },
          child: AbsorbPointer(
            absorbing: _hideControls,
            child: AnimatedOpacity(
              opacity: _hideControls ? 0.0 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                color: Colors.transparent,
                child: const Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: Color.fromRGBO(255, 51, 119, 1),
                    size: 70.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _hideControls = !_hideControls;
            });
            if (widget.controller.value.isPlaying) {
              widget.controller.pause();
            } else {
              widget.controller.play();
            }
          },
        ),
      ],
    );
  }
}
