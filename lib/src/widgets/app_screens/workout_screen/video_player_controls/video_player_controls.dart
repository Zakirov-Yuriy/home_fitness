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
        Semantics(
          label: 'Контроль воспроизведения видео',
          child: GestureDetector(
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
        ),
        Semantics(
          label: 'Воспроизведение или приостановка видео',
          child: GestureDetector(
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
        ),
      ],
    );
  }
}

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerControls extends StatefulWidget {
//   final VideoPlayerController controller;

//   const VideoPlayerControls({super.key, required this.controller});

//   @override
//   VideoPlayerControlsState createState() => VideoPlayerControlsState();
// }

// class VideoPlayerControlsState extends State<VideoPlayerControls> {
//   bool _hideControls = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();

//     // Запуск слушателя при начале воспроизведения видео
//     widget.controller.addListener(() {
//       if (widget.controller.value.isPlaying) {
//         _startHideTimer(); // Запуск таймера при воспроизведении
//       } else {
//         _resetHideTimer(); // Сброс таймера при паузе
//       }
//     });
//   }

//   // Запуск таймера на 2 секунды
//   void _startHideTimer() {
//     _timer?.cancel(); // Отменяем предыдущий таймер
//     _timer = Timer(const Duration(seconds: 2), () {
//       setState(() {
//         _hideControls = true; // Скрываем контролы через 2 секунды
//       });
//     });
//   }

//   // Сброс таймера при паузе
//   void _resetHideTimer() {
//     _timer?.cancel(); // Отменяем таймер, если видео на паузе
//     setState(() {
//       _hideControls = false; // Показываем контролы при паузе
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel(); // Отменяем таймер при уничтожении виджета
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         // Видео контролы, исчезающие при остановке видео
//         AnimatedOpacity(
//           opacity: _hideControls ? 0.0 : 1.0,
//           duration: const Duration(milliseconds: 300),
//           child: GestureDetector(
//             onTap: () {
//               setState(() {
//                 _hideControls = !_hideControls;
//               });
//             },
//             child: AbsorbPointer(
//               absorbing: _hideControls,
//               child: Container(
//                 color: Colors.transparent,
//                 child: Center(
//                   child: IconButton(
//                     icon: Icon(
//                       widget.controller.value.isPlaying
//                           ? Icons.pause
//                           : Icons.play_arrow,
//                       color: const Color.fromRGBO(255, 51, 119, 1),
//                       size: 70.0,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         if (widget.controller.value.isPlaying) {
//                           widget.controller.pause();
//                         } else {
//                           widget.controller.play();
//                         }
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         // Кнопка перехода в полноэкранный режим
//         if (!_hideControls)
//           Positioned(
//             bottom: 20,
//             right: 20,
//             child: IconButton(
//               icon: Icon(
//                 Icons.fullscreen,
//                 color: const Color.fromRGBO(255, 51, 119, 1),
//                 size: 30,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => FullScreenVideo(
//                       controller: widget.controller,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//       ],
//     );
//   }
// }

// class FullScreenVideo extends StatefulWidget {
//   final VideoPlayerController controller;

//   const FullScreenVideo({super.key, required this.controller});

//   @override
//   _FullScreenVideoState createState() => _FullScreenVideoState();
// }

// class _FullScreenVideoState extends State<FullScreenVideo> {
//   bool _hideControls = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();

//     // Запуск слушателя при начале воспроизведения видео
//     widget.controller.addListener(() {
//       if (widget.controller.value.isPlaying) {
//         _startHideTimer(); // Запуск таймера при воспроизведении
//       } else {
//         _resetHideTimer(); // Сброс таймера при паузе
//       }
//     });
//   }

//   // Запуск таймера на 2 секунды
//   void _startHideTimer() {
//     _timer?.cancel(); // Отменяем предыдущий таймер
//     _timer = Timer(const Duration(seconds: 2), () {
//       setState(() {
//         _hideControls = true; // Скрываем контролы через 2 секунды
//       });
//     });
//   }

//   // Сброс таймера при паузе
//   void _resetHideTimer() {
//     _timer?.cancel(); // Отменяем таймер, если видео на паузе
//     setState(() {
//       _hideControls = false; // Показываем контролы при паузе
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel(); // Отменяем таймер при уничтожении виджета
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: GestureDetector(
//         onTap: () {
//           setState(() {
//             _hideControls = !_hideControls;
//           });
//           if (!_hideControls) {
//             _startHideTimer(); // Перезапуск таймера при показе контролов
//           } else {
//             _timer?.cancel(); // Остановка таймера при скрытии
//           }
//         },
//         child: Stack(
//           children: [
//             Center(
//               child: AspectRatio(
//                 aspectRatio: widget.controller.value.aspectRatio,
//                 child: VideoPlayer(widget.controller),
//               ),
//             ),
//             // Контролы воспроизведения (паузу или play)
//             if (!_hideControls)
//               Center(
//                 child: IconButton(
//                   icon: Icon(
//                     widget.controller.value.isPlaying
//                         ? Icons.pause
//                         : Icons.play_arrow,
//                     color: const Color.fromRGBO(255, 51, 119, 1),
//                     size: 70.0,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       if (widget.controller.value.isPlaying) {
//                         widget.controller.pause();
//                       } else {
//                         widget.controller.play();
//                       }
//                     });
//                   },
//                 ),
//               ),
//             // Кнопка выхода из полноэкранного режима
//             if (!_hideControls)
//               Positioned(
//                 bottom: 40,
//                 right: 20,
//                 child: IconButton(
//                   icon: Icon(
//                     Icons.fullscreen_exit,
//                     color: const Color.fromRGBO(255, 51, 119, 1),
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
