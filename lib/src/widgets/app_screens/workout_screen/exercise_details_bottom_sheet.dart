import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'video_player_controls/video_player_controls.dart';

class ExerciseDetailsBottomSheet extends StatefulWidget {
  final String videoUrl; // URL для видео
  final String imagePath;
  final String exerciseText;
  final String subtitleText;
  final String setText;
  final String durationText;

  const ExerciseDetailsBottomSheet({
    super.key,
    required this.videoUrl,
    required this.imagePath,
    required this.exerciseText,
    required this.subtitleText,
    required this.setText,
    required this.durationText,
  });

  @override
  State<ExerciseDetailsBottomSheet> createState() =>
      _ExerciseDetailsBottomSheetState();
}

class _ExerciseDetailsBottomSheetState
    extends State<ExerciseDetailsBottomSheet> {
  int selectedIndex = 0; // Индекс активного элемента
  late VideoPlayerController _controller; // Контроллер для видео

  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        _controller.seekTo(Duration.zero);
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
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Semantics(
              label: 'Выбор между изображением и видео',
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                          _controller.pause();
                        });
                      },
                      child: Semantics(
                        label: 'Изображение',
                        child: Text(
                          'Анимация',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                selectedIndex == 0 ? Colors.pink : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: Semantics(
                        label: 'Видео',
                        child: Text(
                          'Видео',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                selectedIndex == 1 ? Colors.pink : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Semantics(
              label: selectedIndex == 0
                  ? 'Изображение упражнения: ${widget.exerciseText}'
                  : 'Видео упражнения: ${widget.exerciseText}',
              child: selectedIndex == 0
                  ? Image(
                      image: AssetImage(widget.imagePath),
                    )
                  : _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: <Widget>[
                              VideoPlayer(_controller),
                              VideoProgressIndicator(
                                _controller,
                                allowScrubbing: true,
                              ),
                              VideoPlayerControls(
                                controller: _controller,
                              ),
                            ],
                          ),
                        )
                      : const CircularProgressIndicator(
                          color: Color.fromRGBO(255, 51, 119, 1),
                        ),
            ),
            Semantics(
              label: 'Название упражнения: ${widget.exerciseText}',
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 16),
                child: Row(
                  children: [
                    Text(
                      widget.exerciseText,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                    ),
                  ],
                ),
              ),
            ),
            Semantics(
              label:
                  'Сеты: ${widget.setText}, Продолжительность: ${widget.durationText}',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.setText,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    widget.durationText,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color.fromRGBO(255, 51, 119, 1),
              thickness: 1,
            ),
            const SizedBox(height: 8),
            Semantics(
              label: 'Описание упражнения: ${widget.subtitleText}',
              child: Text(
                widget.subtitleText,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 26),
            Semantics(
              label: 'Закрыть',
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 51, 119, 1), // Основной цвет
                      Color.fromRGBO(255, 102, 153, 1), // Светлее для градиента
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.transparent, // Прозрачный фон
                    shadowColor: Colors.transparent, // Убираем тень
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Закрыть',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Semantics(
            //   label: 'Закрыть',
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).pop();
            //     },
            //     style: ElevatedButton.styleFrom(
            //       minimumSize: const Size(double.infinity, 50),
            //       backgroundColor: const Color.fromRGBO(255, 51, 119, 1),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //     ),
            //     child: const Text(
            //       'Закрыть',
            //       style: TextStyle(
            //         fontSize: 24.0,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
