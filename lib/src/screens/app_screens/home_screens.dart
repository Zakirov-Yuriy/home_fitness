import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_fitness/src/screens/auth_screen/account_screen.dart';
import 'package:home_fitness/src/screens/auth_screen/login_screen.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Five/Tight_toned_arms/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Four/Bigger_booty/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_One/your_body/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Six/Face Exercises/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Three/Belly_fat_burner/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Two/Legs_and_thighs/container_carousel_widget_one.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Semantics(
          label: 'Фитнес для женщин',
          child: const Text(
            'Фитнес для женщин',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),
          ),
        ),
        actions: [
          Semantics(
            label: user == null
                ? 'Войти в аккаунт'
                : 'Перейти в аккаунт', // Актуальное описание кнопки
            child: IconButton(
              onPressed: () {
                if (user == null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountScreen()),
                  );
                }
              },
              icon: Icon(
                Icons.person,
                color: (user == null) ? Colors.grey : Colors.pink,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Semantics(
              label: 'Подзаголовок: Программа',
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 5),
                  child: Text(
                    'Программа',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
            // Проверка, авторизован ли пользователь
            if (user != null) ...[
              // Карусели с упражнениями, доступные только для авторизованных пользователей
              Semantics(
                label: 'Карусель с упражнениями для тела',
                child: ContainerCarouselOne(),
              ),
              const SizedBox(height: 20),
              Semantics(
                label: 'Карусель с упражнениями для ног и бедер',
                child: ContainerCarouselTwo(),
              ),
              const SizedBox(height: 20),
              Semantics(
                label: 'Карусель с упражнениями для сжигания жира на животе',
                child: ContainerCarouselThree(),
              ),
              const SizedBox(height: 20),
              Semantics(
                label: 'Карусель с упражнениями для увеличения ягодиц',
                child: ContainerCarouselFour(),
              ),
              const SizedBox(height: 20),
              Semantics(
                label: 'Карусель с упражнениями для подтяжки рук',
                child: ContainerCarouselFive(),
              ),
              const SizedBox(height: 20),
              Semantics(
                label: 'Карусель с упражнениями для лица',
                child: ContainerCarouselSix(),
              ),
              const SizedBox(height: 20),
            ] else ...[
              // Для незарегистрированных пользователей отображаем только одну карусель
              Semantics(
                label: 'Карусель с упражнениями для тела',
                child: ContainerCarouselOne(),
              ),
              const SizedBox(height: 20),
              Semantics(
                label: 'Карусель с упражнениями для ног и бедер',
                child: ContainerCarouselTwo(),
              ),
              const SizedBox(height: 20),
              Semantics(
                label: 'Карусель с упражнениями для сжигания жира на животе',
                child: ContainerCarouselThree(),
              ),
              const SizedBox(height: 20),
              // Сообщение для незарегистрированных пользователей
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Войдите впрофиль, чтобы получить доступ к полному контенту.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
