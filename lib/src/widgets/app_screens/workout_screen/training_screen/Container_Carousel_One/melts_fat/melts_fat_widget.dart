import 'package:flutter/material.dart';

import 'melts_fat_content_widget.dart';

class MeltsFatWidget extends StatelessWidget {
  const MeltsFatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Semantics(
              label: 'Всё тело. Короткие упражнения интенсивный и насыщенный.',
              child: Text(
                'Всё тело'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Semantics(
                label: 'Короткие упражнения интенсивный и насыщенный.',
                child: const Text(
                  'КОРОТКИЕ УПРАЖНЕНИЯ ИНТЕНСИВНЫЙ И НАСЫЩЕННЫЙ',
                  style: TextStyle(
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
                      label: '8 упражнений',
                      child: const Column(
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
                      label: '21 минута',
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
            const MeltsFatContent(),
          ],
        ),
      ),
    );
  }
}
