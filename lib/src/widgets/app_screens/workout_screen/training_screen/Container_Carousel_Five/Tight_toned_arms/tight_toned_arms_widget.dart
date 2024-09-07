import 'package:flutter/material.dart';
import 'tight_toned_arms_content_widget.dart';

class TightTonedArmsWidget extends StatelessWidget {
  const TightTonedArmsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Semantics(
              label: 'Заголовок: Подтянутые руки',
              child: Text(
                'Подтянутые руки'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Semantics(
              label: 'Описание: Лучше всего подходит для рук и предплечий',
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Лучше всего подходит для \nрук и предплечий'.toUpperCase(),
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
                      label: 'Количество упражнений: 9',
                      child: const Column(
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
                            'Упражнений',
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
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    Semantics(
                      label: 'Общее время: 21 минута',
                      child: const Column(
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
                            'Минут',
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
              label: 'Заголовок: Список упражнений',
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 5),
                  child: Text(
                    'Список упражнений',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const TightTonedArmsThighsContent(),
          ],
        ),
      ),
    );
  }
}
