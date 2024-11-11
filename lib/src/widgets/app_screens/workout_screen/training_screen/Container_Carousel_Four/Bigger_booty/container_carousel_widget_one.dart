import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import 'package:home_fitness/src/widgets/app_screens/workout_screen/custom_gradient_button_start.dart';
import '../../../../../../screens/app_screens/workout_screen/Bigger_booty/Bigger_booty_workout_screenю.dart';
import '../../../../../../screens/app_screens/workout_screen/TrimButtAndLegs/Trim_butt_and-legs_workout_screenю.dart';

class ContainerCarouselFour extends StatelessWidget {
  final List<String> images = [
    'assets/images/training_image/workout_image/Bigger booty/Bigger booty.jpg',
    'assets/images/training_image/workout_image/trim butt and legs/trim butt and legs.jpg',
  ];

  // final List<String> titles = [
  //   S.of(context).Program_9x21,
  //   'Программа 9x21',
  // ];

  // final List<String> subtitles = [
  //   'Упругие \nягодицы',
  //   'Подтянутые \nягодицы',
  // ];

  ContainerCarouselFour({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      S.of(context).Program_9x21,
      S.of(context).Program_9x21,
    ];

    List<String> subtitles = [
      S.of(context).Elastic_buttocks,
      S.of(context).Tight_buttocks,
    ];
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
                // Контейнер с изображением
                Semantics(
                  label: 'Изображение тренировки: ${subtitles[index]}',
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
                // Текстовые элементы и кнопки
                Positioned(
                  top: 30,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Заголовок
                      Semantics(
                        label: 'Название программы: ${titles[index]}',
                        child: Text(
                          titles[index],
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 5),
                      // Описание
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
                      // Кнопка "Начать" для первой программы
                      if (index == 0)
                        Semantics(
                          label: 'Кнопка Начать для ${titles[index]}',
                          child: CustomGradientButton(
                            label: S.of(context).Begin,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BiggerBootyWorkoutScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.of(context).push(
                      //       MaterialPageRoute(
                      //         builder: (context) =>
                      //             const BiggerBootyWorkoutScreen(),
                      //       ),
                      //     );
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     foregroundColor: Colors.white,
                      //     backgroundColor:
                      //         const Color.fromRGBO(255, 51, 119, 1),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //     ),
                      //     minimumSize: const Size(150, 35),
                      //   ),
                      //   child: const Text(
                      //     'Начать',
                      //     style: TextStyle(fontSize: 18),
                      //   ),
                      // ),
                      // Кнопка "Начать" для второй программы
                      if (index == 1)
                        Semantics(
                          label: 'Кнопка Начать для ${titles[index]}',
                          child: CustomGradientButton(
                            label: S.of(context).Begin,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const TrimButtAndLegsWorkoutScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) =>
                      //             const TrimButtAndLegsWorkoutScreen(),
                      //       ),
                      //     );
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     foregroundColor: Colors.white,
                      //     backgroundColor: Colors.pink,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //     ),
                      //     minimumSize: const Size(150, 35),
                      //   ),
                      //   child: const Text(
                      //     'Начать',
                      //     style: TextStyle(fontSize: 18),
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
