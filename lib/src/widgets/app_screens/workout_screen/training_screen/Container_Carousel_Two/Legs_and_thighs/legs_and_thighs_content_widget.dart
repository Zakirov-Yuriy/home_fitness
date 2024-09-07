import 'package:flutter/material.dart';

import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class LegsAndThighsContent extends StatelessWidget {
  const LegsAndThighsContent({super.key});

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
              'assets/images/training_image/workout_image/your_body/higt knees.gif',
          exerciseText: 'Высокие колени',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Бегите на месте, поднимая колени как можно выше. Увеличивайте темп для усиленной кардионагрузки и улучшения силы ног. Эффективно для разминки.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2Fhigt_knees.mp4?alt=media&token=f9742b8d-5671-4b1c-b1ea-22c7cbbad95e',
          semanticLabel:
              'Упражнение Высокие колени, длительность 60 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/your_body/Lateral lunges.gif',
          exerciseText: 'Боковые выпады',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Стойте прямо, делайте шаг вбок, сгибая одну ногу в колене. Возвращайтесь в исходное положение. Укрепляйте бедра и ягодицы. Повторяйте для баланса и силы.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FLateral_lunges.mp4?alt=media&token=e8e2410b-5fe3-4bb9-b737-fcb0e6f25939',
          semanticLabel:
              'Упражнение Боковые выпады, длительность 30 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Kettlebell goblet squat.gif',
          exerciseText: 'Приседание с гирей',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Приседание с гирей: возьмите гирю, держа ее на уровне груди или плеч. Станьте прямо, опуститесь в присед до параллели с полом, затем поднимитесь. Укрепляйте ноги и ягодицы. Повторяйте для силы и тонуса.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FKettlebell%20goblet%20squat.mp4?alt=media&token=9f0a0ab3-bbd2-4c0f-b456-320d08bbd21f',
          semanticLabel:
              'Упражнение Приседание с гирей, длительность 60 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/one leg row.gif',
          exerciseText: 'Гребля на одной ноге',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Гребля на одной ноге - это упражнение, выполняемое в тренажерном зале на тренажерах с поддержкой для спины. Человек сидит на тренажере и, удерживая рукоятку или рукоять, двигает ногу вперед и назад, эмулируя движение гребли. Это упражнение развивает силу, выносливость и координацию в ногах и ягодицах.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fone%20leg%20row.mp4?alt=media&token=94b0a388-22e0-40a0-83e8-969429d341f6',
          semanticLabel:
              'Упражнение Гребля на одной ноге, длительность 60 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/bulgarian split squats.gif',
          exerciseText: 'Болгарские приседания',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Болгарские приседания: станьте спиной к скамье, поставьте одну ногу на нее, другая нога впереди. Опуститесь в присед, сгибая переднюю ногу, затем поднимитесь. Укрепляйте ноги и ягодицы. Повторяйте для силы и баланса.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fbulgarian%20split%20squats.mp4?alt=media&token=5fff8dc5-1b80-4882-bbb4-615636a0aa82',
          semanticLabel:
              'Упражнение Болгарские приседания, длительность 60 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/your_body/Running.gif',
          exerciseText: 'Бег',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Эта тренировка является отличным кардионагрузочным упражнением и может быть эффективной частью фитнес-регима. Она улучшает выносливость, укрепляет ноги и ягодицы, а также способствует сжиганию калорий.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FRunning.mp4?alt=media&token=fca48f8e-2d90-4e4e-a753-087fbd205304',
          semanticLabel:
              'Упражнение Бег, длительность 60 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Donkey kicks.gif',
          exerciseText: 'Ослиные удары',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Ослиные удары: начните в положении стойки на четвереньках. Отклоняйте одну ногу назад, затем поднимайте ее высоко наверх, поднимая колено к груди. Повторите с другой ногой. Укрепляйте ягодицы и нижнюю часть спины.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FDonkey%20kicks.mp4?alt=media&token=799d8abd-5b46-49ba-b7ae-b95e3184c205',
          semanticLabel:
              'Упражнение Ослиные удары, длительность 30 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Dumbbell squat and press.gif',
          exerciseText: 'Приседания и жим \nгантелей',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Приседания и жим гантелей: станьте прямо с гантелями на плечах. Сделайте присед, затем поднимитеся и одновременно нажмите гантели вверх. Укрепляйте ноги, ягодицы, плечи и руки. Повторяйте для силы и выносливости.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FDumbbell%20squat%20and%20press.mp4?alt=media&token=937eebd5-8ac8-4756-92fe-7c1059c7e391',
          semanticLabel:
              'Упражнение Приседания и жим гантелей, длительность 30 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/one leg deadlift.gif',
          exerciseText: 'Подъем одной ноги',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Подъем одной ноги: станьте рядом с подставкой или скамьей. Поднимите одну ногу, держа ее согнутой в колене, затем медленно опустите. Укрепляйте ягодицы и ноги. Повторяйте на каждой ноге для баланса и силы.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fone%20leg%20deadlift.mp4?alt=media&token=2274383f-50d2-42c7-b5b8-1376ccc5e9d6',
          semanticLabel:
              'Упражнение Подъем одной ноги, длительность 30 секунд, 3 повторения.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Wall squats.gif',
          exerciseText: 'Приседания у стены',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Приседания у стены: станьте спиной к стене, ноги на ширине плеч. Медленно опуститесь в присед, пока спина не коснется стены, затем вернитесь в исходное положение. Укрепляйте ноги и ягодицы. Повторяйте для силы и стабильности.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FWall%20squats.mp4?alt=media&token=fd328fe3-a39c-4b6a-93f0-986b68c015cc',
          semanticLabel:
              'Упражнение Приседания у стены, длительность 30 секунд, 3 повторения.',
        ),
        CustomDivider(),
      ],
    );
  }
}
