import 'package:flutter/material.dart';

import 'melts_fat_content_widget.dart';

class MeltsFatWidget extends StatelessWidget {
  const MeltsFatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Ваш существующий код для MeltsFatWidget
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Text(
              'Всё тело'.toUpperCase(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'КОРОТКИЕ УПРАЖНЕНИЯ ИНТЕНСИВНЫЙ И НАСЫЩЕННЫЙ',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
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
                    Container(
                      height: 45,
                      width: 1,
                      color: Colors.blueGrey,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                    ),
                    const Column(
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
            Container(
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
            const MeltsFatContent(),
          ],
        ),
      ),
    );
  }
}
