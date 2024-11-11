// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});

//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {
//   final user = FirebaseAuth.instance.currentUser;

//   Future<void> signOut() async {
//     final navigator = Navigator.of(context);

//     await FirebaseAuth.instance.signOut();

//     navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios, // add custom icons also
//           ),
//         ),
//         title: const Text('Аккаунт'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             tooltip: 'Open shopping cart',
//             onPressed: () => signOut(),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Ваш Email: ${user?.email}'),
//             TextButton(
//               onPressed: () => signOut(),
//               child: const Text('Выйти'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signOut() async {
    final navigator = Navigator.of(context);
    await FirebaseAuth.instance.signOut();
    navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Semantics(
          label: 'Назад',
          hint: 'Вернуться к предыдущему экрану',
          button: true,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        title: const Text('Аккаунт'),
        actions: [
          Semantics(
            label: 'Выйти из аккаунта',
            hint: 'Нажмите, чтобы выйти',
            button: true,
            child: IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Выйти',
              onPressed: () => signOut(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Semantics(
                label: 'Логотип приложения',
                hint: 'Логотип на верхней части экрана',
                image: true,
                child: Image.asset(
                  'assets/images/logo/logo2.png', // путь к файлу логотипа
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 30),

              // Отображение email пользователя
              Semantics(
                label: 'Ваш Email',
                child: Text('Ваш Email: ${user?.email ?? 'Неизвестен'}'),
              ),
              const SizedBox(height: 20),

              // Кнопка выхода
              Semantics(
                label: 'Кнопка выхода',
                hint: 'Нажмите, чтобы выйти из аккаунта',
                button: true,
                child: TextButton(
                  onPressed: () => signOut(),
                  child: const Text('Выйти'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
