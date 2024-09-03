import 'package:flutter/material.dart';
import 'package:home_fitness/src/screens/app_screens/workout_screen/tight_toned_arms/tight_toned_arms_workout_screen%D1%8E.dart';

class ContainerCarouselFive extends StatelessWidget {
  final List<String> images = [
    'assets/images/training_image/workout_image/tight_toned_arms/Tight toned arms.png',
  ];

  final List<String> titles = [
    'Программа 9x21',
  ];

  final List<String> subtitles = [
    'Подтянутые \nруки',
  ];

  ContainerCarouselFive({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 1 ? 0 : 0,
              // right: index == 0 ? 30 : 0,
            ),
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
                      // Условие для отображения кнопки "Начать" только для Программа 7x4
                      if (index == 0)
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const TightTonedArmsWorkoutScreen(),
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
                      // Условие для отображения кнопки "Другой экран" только для Программа 7x2
                      // if (index == 1)
                      //   ElevatedButton(
                      //     onPressed: () {
                      //       // Переход на MyProfileScreen при нажатии кнопки для Программа 7x2
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) =>
                      //               GlutesAndLegsWorkoutScreen(),
                      //         ),
                      //       );
                      //     },
                      //     style: ElevatedButton.styleFrom(
                      //       foregroundColor: Colors.white,
                      //       backgroundColor: Colors.pink, // цвет текста
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(15),
                      //       ),
                      //       minimumSize: const Size(
                      //           150, 35), // задаем минимальные размеры кнопки
                      //     ),
                      //     child: const Text(
                      //       'Начать',
                      //       style: TextStyle(fontSize: 18),
                      //     ),
                      //   ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        controller: PageController(viewportFraction: 0.95),
      ),
    );
  }
}
