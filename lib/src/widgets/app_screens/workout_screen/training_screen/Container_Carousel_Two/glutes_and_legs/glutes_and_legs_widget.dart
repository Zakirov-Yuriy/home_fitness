import 'package:flutter/material.dart';
import 'glutes_and_legs_content_widget.dart';

class GlutesAndLegsWidget extends StatelessWidget {
  const GlutesAndLegsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Semantics(
              label: 'Ягодицы и ноги. Подходит для ног и бедер.',
              child: Text(
                'Ягодицы и ноги'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Semantics(
                label: 'Лучше всего подходит для ног и бедер.',
                child: Text(
                  'Лучше всего подходит \nдля ног и бедер'.toUpperCase(),
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
                      label: '9 упражнений',
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
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                    ),
                    Semantics(
                      label: '25 минут',
                      child: const Column(
                        children: [
                          Text(
                            '25',
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
              label: 'Список упражнений',
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
            const GlutesAndLegsContent(),
          ],
        ),
      ),
    );
  }
}
