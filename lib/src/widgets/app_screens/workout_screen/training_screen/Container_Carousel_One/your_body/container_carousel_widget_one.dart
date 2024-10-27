import 'package:flutter/material.dart';
import '../../../../../../screens/app_screens/workout_screen/melts_fat/melts_fat_workout_screenю.dart';
import '../../../../../../screens/app_screens/workout_screen/your_body/full_body_workout_screenю.dart';

class ContainerCarouselOne extends StatelessWidget {
  final List<String> images = [
    'assets/images/training_image/workout_image/whole_body.png',
    'assets/images/training_image/workout_image/GIRL_WITH.jpg',
  ];

  final List<String> titles = [
    'Программа 9x23',
    'Программа 8x21',
  ];

  final List<String> subtitles = [
    'Тренировка \nвсего тела',
    'Растопить \nжир',
  ];

  ContainerCarouselOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 1 ? 0 : 0,
              right: index == 0 ? 20 : 0,
            ),
            child: Semantics(
              label: 'Картинка тренировки: ${titles[index]}',
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 20,
                    child: Semantics(
                      label: '${titles[index]}: ${subtitles[index]}',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titles[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            subtitles[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          // Условие для отображения кнопки "Начать" только для Программа 9x23
                          if (index == 0)
                            Semantics(
                              label: 'Кнопка начать тренировку: Программа 9x23',
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FullBodyWorkoutScreen(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      const Color.fromRGBO(255, 51, 119, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  minimumSize: const Size(150, 35),
                                ),
                                child: const Text(
                                  'Начать',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          // Условие для отображения кнопки "Другой экран" только для Программа 8x21
                          if (index == 1)
                            Semantics(
                              label: 'Кнопка начать тренировку: Программа 8x21',
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MeltsFatWorkoutScreen(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.pink,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  minimumSize: const Size(150, 35),
                                ),
                                child: const Text(
                                  'Начать',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        controller: PageController(viewportFraction: 0.88),
      ),
    );
  }
}
