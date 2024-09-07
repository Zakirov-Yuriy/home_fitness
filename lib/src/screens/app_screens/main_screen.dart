import 'package:flutter/material.dart';

import 'home_screens.dart';
// import 'my_profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MainScreenExample(),
    );
  }
}

class MainScreenExample extends StatefulWidget {
  const MainScreenExample({super.key});

  @override
  State<MainScreenExample> createState() => _MainScreenExampleState();
}

class _MainScreenExampleState extends State<MainScreenExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  Нижний AppBar
      body: <Widget>[
        /// Home page
        Semantics(
          label: 'Домашняя страница',
          child: const Card(
            margin: EdgeInsets.all(8.0),
            child: HomeScreen(),
          ),
        ),

        /// Notifications page
        Semantics(
          label: 'Страница уведомлений',
          child: const Card(
            margin: EdgeInsets.all(8.0),
            // child: MyProfileScreen(),
            // shadowColor: Colors.transparent,
          ),
        ),

        /// Messages page
        Semantics(
          label: 'Страница сообщений',
          child: const Card(
            margin: EdgeInsets.all(8.0),
            // Вы можете добавить контент для страницы сообщений здесь
          ),
        ),
      ][currentPageIndex],
    );
  }
}
