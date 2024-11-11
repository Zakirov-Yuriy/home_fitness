import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';

import 'face_exercises_content_widget.dart';

class FaceExercisesWidget extends StatelessWidget {
  const FaceExercisesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Semantics(
              label: 'Заголовок упражнений для лица',
              child: Text(
                S.of(context).Face_Exercises2.toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Semantics(
              label: 'Подзаголовок, описывающий упражнения',
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  S.of(context).Best_suited_for_the_face.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Semantics(
              label: 'Количество упражнений и длительность',
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        label: 'Количество упражнений: 16',
                        child: Column(
                          children: [
                            Text(
                              '16',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(255, 51, 119, 1),
                              ),
                            ),
                            Text(
                              S.of(context).Exercises,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 1,
                        color: Colors.blueGrey,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                      ),
                      Semantics(
                        label: 'Длительность: 21 минута',
                        child: Column(
                          children: [
                            Text(
                              '21',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(255, 51, 119, 1),
                              ),
                            ),
                            Text(
                              S.of(context).Minutes,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Semantics(
              label: 'Разделитель между секциями',
              child: const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 5),
                child: Divider(
                  color: Colors.grey,
                  thickness: 3,
                ),
              ),
            ),
            Semantics(
              label: 'Заголовок списка упражнений',
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 5),
                  child: Text(
                    S.of(context).List_of_exercises,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const FaceExercisesThighsContent(),
          ],
        ),
      ),
    );
  }
}
