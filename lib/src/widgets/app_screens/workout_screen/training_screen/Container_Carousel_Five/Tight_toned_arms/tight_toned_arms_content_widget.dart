import 'package:flutter/material.dart';
import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class TightTonedArmsThighsContent extends StatelessWidget {
  const TightTonedArmsThighsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/Front dumbbel raise.gif',
          exerciseText: 'Подъем гантелей вперед',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Подъем гантелей вперед: Возьмите гантели в каждую руку, станьте прямо. Поднимите гантели вперед, сохраняя прямые руки и контролируя движение. Вернитесь в исходное положение с контролем.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FFront%20dumbbel%20raise.mp4?alt=media&token=a3b51ef1-7621-423c-8612-af4db404580f',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/tricep overhead press.gif',
          exerciseText: 'Верхний жим трицепса',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Верхний жим трицепса: Лягте на скамью или пол, возьмите гантели в руки над грудью с прямыми руками. Согните руки в локтях, опуская гантели к голове. Вернитесь в исходное положение, поднимая гантели вверх.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Ftricep%20overhead%20press.mp4?alt=media&token=e13791d8-25d0-4301-afda-a52de66833c4',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/dumbbell squat and press.gif',
          exerciseText: 'Подъем Гархаммер',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Приседания и жим гантелей: Возьмите гантели в каждую руку, станьте прямо. Сделайте приседание, затем поднимите гантели к плечам. Отталкивайтесь от пят, выполняя жим гантелей вверх.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20squat%20and%20press.mp4?alt=media&token=4c53d253-377f-49b6-83e1-551132e2ae1f',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/dumbbell bent over row.gif',
          exerciseText: 'Гантельный ряд \nс наклоном',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Гантельный ряд с наклоном: Возьмите гантели в каждую руку, станьте прямо. Наклонитесь вперед, держа гантели перед собой. Поднимите гантели к телу, сокращая лопатки. Спускайте гантели обратно и повторите.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20bent%20over%20row.mp4?alt=media&token=bcbf3069-67d3-443b-b15b-7aefbde4e0b2',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/dumbbell step up.gif',
          exerciseText: 'Подъем гантелей',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Подъем гантелей: Возьмите гантели в каждую руку, станьте прямо. Поднимите гантели к плечам, сохраняя прямые руки и контролируя движение. Спустите гантели обратно и повторите.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20step%20up.mp4?alt=media&token=d8dd9b1a-d6c1-4d34-b0b4-1e6eae71a135',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/dumbbell peck fly.gif',
          exerciseText: 'Махи с гантелями',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Махи с гантелями: Возьмите гантели в руки, станьте прямо. Разведите руки в стороны, поднимая гантели до уровня плеч. Медленно опустите гантели обратно и повторите движение.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20peck%20fly.mp4?alt=media&token=a4eb17b1-4bae-4f6c-baf4-44906e27ed65',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/Standing hammer curl.gif',
          exerciseText: 'Скручивание молота стоя',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Скручивание молота стоя: Возьмите гантель в руку, станьте прямо. Поднимите гантель перед собой на уровень плеч. Поворачивайте торс в сторону противоположной руке, скручивая корпус. Вернитесь в исходное положение и повторите на другой стороне.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FStanding%20hammer%20curl.mp4?alt=media&token=2a4e2406-a186-4dc3-be0b-342401f82af0',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/Seated dumbbell military press.gif',
          exerciseText: 'Военный жим гантелей \nв положении сидя',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Военный жим гантелей в положении сидя: Сядьте на скамью с поддержкой спины. Возьмите гантели в руки и поднимите их к плечам. Выпрямите руки вверх, поднимая гантели над головой. Опустите гантели обратно к плечам и повторите движение.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FSeated%20dumbbell%20military%20press.mp4?alt=media&token=4b1ba2ef-23d2-4fb6-b35b-1622d01988d1',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/tight_toned_arms/One knee push ups.gif',
          exerciseText: 'Отжимания на одном \nколене',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Отжимания на одном колене: Встаньте на колени и руки, поддерживая верхнее тело. Опустите верхнее тело, согнув руки в локтях. Вернитесь в исходное положение, выпрямив руки. Повторите упражнение на одном колене, затем переключитесь на другое.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FOne%20knee%20push%20ups.mp4?alt=media&token=29c54022-90d3-44c5-a184-bb6c8ffbc63f',
        ),
        CustomDivider(),
      ],
    );
  }
}
