// import 'package:email_validator/email_validator.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:home_fitness/services/snack_bar.dart';

// class ResetPasswordScreen extends StatefulWidget {
//   const ResetPasswordScreen({super.key});

//   @override
//   State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
// }

// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   TextEditingController emailTextInputController = TextEditingController();
//   final formKey = GlobalKey<FormState>();

//   @override
//   void dispose() {
//     emailTextInputController.dispose();

//     super.dispose();
//   }

//   Future<void> resetPassword() async {
//     final navigator = Navigator.of(context);
//     final scaffoldMassager = ScaffoldMessenger.of(context);

//     final isValid = formKey.currentState!.validate();
//     if (!isValid) return;

//     try {
//       await FirebaseAuth.instance
//           .sendPasswordResetEmail(email: emailTextInputController.text.trim());
//     } on FirebaseAuthException catch (e) {
//       print(e.code);

//       if (e.code == 'user-not-found') {
//         SnackBarService.showSnackBar(
//           context,
//           'Такой email незарегистрирован!',
//           true,
//         );
//         return;
//       } else {
//         SnackBarService.showSnackBar(
//           context,
//           'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
//           true,
//         );
//         return;
//       }
//     }

//     const snackBar = SnackBar(
//       content: Text('Сброс пароля осуществен. Проверьте почту'),
//       backgroundColor: Colors.green,
//     );

//     scaffoldMassager.showSnackBar(snackBar);

//     navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: const Text('Сброс пароля'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Form(
//           key: formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 autocorrect: false,
//                 controller: emailTextInputController,
//                 validator: (email) =>
//                     email != null && !EmailValidator.validate(email)
//                         ? 'Введите правильный Email'
//                         : null,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Введите Email',
//                 ),
//               ),
//               const SizedBox(height: 30),
//               Semantics(
//                 label: 'Сбросить пароль',
//                 child: Container(
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(
//                       colors: [
//                         Color.fromRGBO(255, 51, 119, 1), // Основной цвет
//                         Color.fromRGBO(
//                             255, 102, 153, 1), // Более светлый оттенок
//                       ],
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                     ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(double.infinity, 50),
//                       backgroundColor: Colors.transparent, // Прозрачный фон
//                       shadowColor: Colors.transparent, // Убираем тень
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     onPressed: resetPassword,
//                     child: const Text(
//                       'Сбросить пароль',
//                       style: TextStyle(
//                         fontSize: 24.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//               // ElevatedButton(
//               //   style: ElevatedButton.styleFrom(
//               //     minimumSize: const Size(double.infinity, 50),
//               //     backgroundColor: const Color.fromRGBO(255, 51, 119, 1),
//               //     shape: RoundedRectangleBorder(
//               //       borderRadius: BorderRadius.circular(30),
//               //     ),
//               //   ),
//               //   onPressed: resetPassword,
//               //   child: const Center(
//               //       child: Text(
//               //     'Сбросить пароль',
//               //     style: TextStyle(
//               //       fontSize: 24.0,
//               //       color: Colors.white,
//               //     ),
//               //   )),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_fitness/services/snack_bar.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController emailTextInputController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    super.dispose();
  }

  Future<void> resetPassword() async {
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailTextInputController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e.code);

      if (e.code == 'user-not-found') {
        SnackBarService.showSnackBar(
          context,
          'Такой email незарегистрирован!',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
        return;
      }
    }

    const snackBar = SnackBar(
      content: Text('Сброс пароля осуществлен. Проверьте почту'),
      backgroundColor: Colors.green,
    );

    scaffoldMessenger.showSnackBar(snackBar);
    navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Сброс пароля'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 68),

              // Семантика для логотипа
              Semantics(
                label: 'Логотип приложения',
                child: Image.asset(
                  'assets/images/logo/logo2.png', // путь к файлу логотипа
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 30),

              // Семантика для поля ввода email
              Semantics(
                label: 'Поле для ввода электронной почты',
                hint: 'Введите ваш email для сброса пароля',
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  controller: emailTextInputController,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Введите правильный Email'
                          : null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Введите Email',
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Семантика для кнопки сброса пароля
              Semantics(
                label: 'Кнопка для сброса пароля',
                hint: 'Нажмите, чтобы сбросить пароль',
                button: true,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 51, 119, 1),
                        Color.fromRGBO(255, 102, 153, 1),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: resetPassword,
                    child: const Text(
                      'Сбросить пароль',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
