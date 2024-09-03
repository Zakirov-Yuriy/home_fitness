// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'video_player_controls/video_player_controls.dart';

class ExerciseDetailsBottomSheet extends StatefulWidget {
  final String videoUrl; // добавляем URL для видео
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
    // Инициализируем контроллер видео с URL
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        // Гарантируем, что видео начнется с начала
        _controller.seekTo(Duration.zero);
        // Обновляем состояние, чтобы виджет перестроился и показал видео
        setState(() {});
      });
  }

  @override
  void dispose() {
    // Освобождаем ресурсы контроллера видео
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
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                        _controller
                            .pause(); // Останавливаем видео при переключении на изображение
                      });
                    },
                    child: Text(
                      'Анимация',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == 0 ? Colors.pink : Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Text(
                      'Видео',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == 1 ? Colors.pink : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (selectedIndex == 0)
              Image(
                image: AssetImage(widget.imagePath),
              ),
            if (selectedIndex == 1)
              _controller.value.isInitialized
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
                    ), // Показываем индикатор загрузки, пока видео не загрузится
            Padding(
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
            Row(
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
            const Divider(
              color: Color.fromRGBO(255, 51, 119, 1),
              thickness: 1,
            ),
            const SizedBox(height: 8),
            Text(
              widget.subtitleText,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 26),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Закрытие BottomSheet
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color.fromRGBO(
                    255, 51, 119, 1), // Цвет кнопки при отсутствии onPressed
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
          ],
        ),
      ),
    );
  }
}
