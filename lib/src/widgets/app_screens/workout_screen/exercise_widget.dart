// exercise_widget.dart

import 'package:flutter/material.dart';

import 'exercise_details_bottom_sheet.dart';

class ExerciseWidget extends StatelessWidget {
  final String imagePath;
  final String exerciseText;
  final String subtitleText;
  final String setText;
  final String durationText;
  final String videoUrl;
  const ExerciseWidget({
    super.key,
    required this.imagePath,
    required this.exerciseText,
    required this.subtitleText,
    required this.setText,
    required this.durationText,
    required this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showExerciseDetails(context);
      },
      child: Row(
        children: [
          Image(
            width: 100,
            height: 100,
            image: AssetImage(imagePath),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      exerciseText,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width -
                        150, // Ширина экрана минус ширина изображения и отступа
                    child: Text(
                      subtitleText,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2, // Максимальное количество строк
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showExerciseDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Установка параметра isScrollControlled в true
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: ExerciseDetailsBottomSheet(
            imagePath: imagePath,
            exerciseText: exerciseText,
            subtitleText: subtitleText,
            setText: setText,
            durationText: durationText,
            videoUrl: videoUrl,
          ),
        );
      },
    );
  }
}
