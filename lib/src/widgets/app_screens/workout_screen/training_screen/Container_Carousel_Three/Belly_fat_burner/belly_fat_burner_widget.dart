import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import 'belly_fat_burner_content_widget.dart';

class BellyFatBurnerWidget extends StatelessWidget {
  const BellyFatBurnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Блок упражнений для сжигания жира с живота',
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Center(
          child: Column(
            children: [
              Semantics(
                label: 'Заголовок: Убираем жир с живота',
                child: Text(
                  S.of(context).Removing_belly_fat2.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Semantics(
                  label:
                      'Подзаголовок: Лучше всего подходит для боков и живота',
                  child: Text(
                    S.of(context).Best_for_sides_and_belly.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        label: 'Количество упражнений: 8',
                        child: Column(
                          children: [
                            Text(
                              '8',
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
                        label: 'Продолжительность: 20 минут',
                        child: Column(
                          children: [
                            Text(
                              '20',
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
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 5),
                child: Divider(
                  color: Colors.grey,
                  thickness: 3,
                ),
              ),
              Semantics(
                label: 'Заголовок раздела: Список упражнений',
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
              const BellyFatBurnerThighsContent(),
            ],
          ),
        ),
      ),
    );
  }
}
