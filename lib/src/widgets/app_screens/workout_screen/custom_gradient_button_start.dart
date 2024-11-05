// lib/custom_gradient_button.dart
import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final String label; // Текст кнопки
  final VoidCallback onPressed; // Функция, выполняемая при нажатии
  final double width;
  final double height;

  const CustomGradientButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width = 150,
    this.height = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 51, 119, 1), // Основной цвет
            Color.fromRGBO(255, 102, 153, 1), // Светлее для градиента
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Прозрачный фон
          shadowColor: Colors.transparent, // Убираем тень
          minimumSize: Size(width, height), // Минимальный размер
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
