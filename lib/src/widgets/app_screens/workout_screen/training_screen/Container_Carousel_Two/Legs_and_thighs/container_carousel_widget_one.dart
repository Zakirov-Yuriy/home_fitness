import 'package:flutter/material.dart';
import 'package:home_fitness/src/screens/app_screens/workout_screen/glutes_and_legs/glutes_and_legs_workout_screen%D1%8E.dart';
import 'package:home_fitness/src/screens/app_screens/workout_screen/legs_and_thighs/legs_and_thighs_workout_screen%D1%8E.dart';
import 'package:home_fitness/src/widgets/app_screens/workout_screen/custom_gradient_button_start.dart';

class ContainerCarouselTwo extends StatelessWidget {
  final List<String> images = [
    'assets/images/training_image/workout_image/legs_and_thighs/Legs and thighs.jpg',
    'assets/images/training_image/workout_image/glutes_and_legs/glutes and legs.png',
  ];

  final List<String> titles = [
    'Программа 10x24',
    'Программа 9x25',
  ];

  final List<String> subtitles = [
    'Тренировка \nног и бедер',
    'Ягодицы и \nноги',
  ];

  ContainerCarouselTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 1 ? 0 : 0,
              right: index == 0 ? 20 : 0,
            ),
            child: Stack(
              children: [
                Semantics(
                  label: 'Изображение ${titles[index]}',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Semantics(
                        label: 'Заголовок: ${titles[index]}',
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
                        label: 'Подзаголовок: ${subtitles[index]}',
                        child: Text(
                          subtitles[index],
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Условие для отображения кнопки "Начать" только для Программа 10x24
                      if (index == 0)
                        Semantics(
                          label: 'Кнопка Начать для ${titles[index]}',
                          child: CustomGradientButton(
                            label: 'Начать',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const LegsAndThighsWorkoutScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      // Semantics(
                      //   label: 'Кнопка Начать для ${titles[index]}',
                      //   child: ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.of(context).push(
                      //         MaterialPageRoute(
                      //           builder: (context) =>
                      //               const LegsAndThighsWorkoutScreen(),
                      //         ),
                      //       );
                      //     },
                      //     style: ElevatedButton.styleFrom(
                      //       foregroundColor: Colors.white,
                      //       backgroundColor:
                      //           const Color.fromRGBO(255, 51, 119, 1),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(15),
                      //       ),
                      //       minimumSize: const Size(150, 35),
                      //     ),
                      //     child: const Text(
                      //       'Начать',
                      //       style: TextStyle(fontSize: 18),
                      //     ),
                      //   ),
                      // ),
                      // Условие для отображения кнопки "Начать" только для Программа 9x25
                      if (index == 1)
                        Semantics(
                          label: 'Кнопка Начать для ${titles[index]}',
                          child: CustomGradientButton(
                            label: 'Начать',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const GlutesAndLegsWorkoutScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      // Semantics(
                      //   label: 'Кнопка Начать для ${titles[index]}',
                      //   child: ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) =>
                      //               const GlutesAndLegsWorkoutScreen(),
                      //         ),
                      //       );
                      //     },
                      //     style: ElevatedButton.styleFrom(
                      //       foregroundColor: Colors.white,
                      //       backgroundColor: Colors.pink,
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(15),
                      //       ),
                      //       minimumSize: const Size(150, 35),
                      //     ),
                      //     child: const Text(
                      //       'Начать',
                      //       style: TextStyle(fontSize: 18),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        controller: PageController(viewportFraction: 0.88),
      ),
    );
  }
}
