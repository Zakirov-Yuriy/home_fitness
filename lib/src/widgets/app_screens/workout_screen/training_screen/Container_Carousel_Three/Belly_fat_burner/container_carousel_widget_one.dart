import 'package:flutter/material.dart';
import '../../../../../../screens/app_screens/workout_screen/belly_fat_burner/belly_fat_burner_workout_screenю.dart';

class ContainerCarouselThree extends StatelessWidget {
  final List<String> images = [
    'assets/images/training_image/workout_image/belly_fat_burner/Belly fat burner.png',
  ];

  final List<String> titles = [
    'Программа 8x20',
  ];

  final List<String> subtitles = [
    'Убираем жир\nс живота',
  ];

  ContainerCarouselThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: images
            .length, // Измените на images.length для поддержки нескольких элементов
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 1 ? 0 : 0,
              // right: index == 0 ? 20 : 0,
            ),
            child: Semantics(
              label: 'Картинка: ${titles[index]}, ${subtitles[index]}',
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
                      label: 'Информация о программе',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Semantics(
                            label: titles[index],
                            child: Text(
                              titles[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Semantics(
                            label: subtitles[index],
                            child: Text(
                              subtitles[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 10),
                          if (index == 0)
                            Semantics(
                              label: 'Кнопка "Начать"',
                              button: true,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BellyFatBurnerWorkoutScreen(),
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
