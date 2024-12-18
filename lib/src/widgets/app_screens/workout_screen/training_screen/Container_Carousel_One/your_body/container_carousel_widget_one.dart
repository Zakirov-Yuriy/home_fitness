import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import 'package:home_fitness/src/widgets/app_screens/workout_screen/custom_gradient_button_start.dart';
import '../../../../../../screens/app_screens/workout_screen/melts_fat/melts_fat_workout_screenю.dart';
import '../../../../../../screens/app_screens/workout_screen/your_body/full_body_workout_screenю.dart';

class ContainerCarouselOne extends StatelessWidget {
  final List<String> images = [
    'assets/images/training_image/workout_image/whole_body.png',
    'assets/images/training_image/workout_image/GIRL_WITH.jpg',
  ];

  // final List<String> titles = [
  //   S.of(context).Program_9x23,
  //   S.of(context).Program_8x21,
  // ];

  // final List<String> subtitles = [
  //   S.of(context).Full_body_workout,
  //   S.of(context).Melt_the_fat,
  // ];

  ContainerCarouselOne({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      S.of(context).Program_9x23,
      S.of(context).Program_8x21,
    ];
    List<String> subtitles = [
      S.of(context).Full_body_workout,
      S.of(context).Melt_the_fat,
    ];
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
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              child: CustomGradientButton(
                                label: S.of(context).Begin,
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FullBodyWorkoutScreen(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          // Semantics(
                          //   label: 'Кнопка начать тренировку: Программа 9x23',
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       Navigator.of(context).push(
                          //         MaterialPageRoute(
                          //           builder: (context) =>
                          //               const FullBodyWorkoutScreen(),
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
                          // Условие для отображения кнопки "Другой экран" только для Программа 8x21
                          if (index == 1)
                            Semantics(
                              label: 'Кнопка начать тренировку: Программа 8x21',
                              child: CustomGradientButton(
                                label: S.of(context).Begin,
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MeltsFatWorkoutScreen(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          // Semantics(
                          //   label: 'Кнопка начать тренировку: Программа 8x21',
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) =>
                          //               const MeltsFatWorkoutScreen(),
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
