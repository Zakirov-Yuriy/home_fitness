import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import 'Bigger_booty_content_widget.dart';

class BiggerBootyWidget extends StatelessWidget {
  const BiggerBootyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Semantics(
              label: 'Заголовок секции Упругие ягодицы',
              child: Text(
                S.of(context).Elastic_buttocks2.toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Semantics(
              label: 'Описание секции - лучше всего подходит для ног и бедер',
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  S.of(context).Best_suited_for_legs_and_thighs.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Semantics(
              label: 'Информация о количестве упражнений и времени тренировки',
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        label: '9 упражнений',
                        child: Column(
                          children: [
                            Text(
                              '9',
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
                        label: '21 минута тренировки',
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
              label: 'Разделитель секции',
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
            const BiggerBootyContent(),
          ],
        ),
      ),
    );
  }
}
