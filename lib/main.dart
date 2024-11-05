import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:home_fitness/services/firebase_options.dart';
import 'package:home_fitness/services/firebase_streem.dart';
import 'package:home_fitness/src/screens/app_screens/home_screens.dart';
import 'package:home_fitness/src/screens/auth_screen/account_screen.dart';
import 'package:home_fitness/src/screens/auth_screen/login_screen.dart';
import 'package:home_fitness/src/screens/auth_screen/reset_password_screen.dart';
import 'package:home_fitness/src/screens/auth_screen/signup_screen.dart';
import 'package:home_fitness/src/screens/auth_screen/verify_email_screen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Подключаем Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final messaging = FirebaseMessaging.instance;
  messaging.getToken().then((token) => log(token ?? 'нет токина'));

  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      routes: {
        '/': (context) => const FirebaseStream(),
        '/home': (context) => const HomeScreen(),
        '/account': (context) => const AccountScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        '/verify_email': (context) => const VerifyEmailScreen(),
      },
      initialRoute: '/',
    );
  }
}
