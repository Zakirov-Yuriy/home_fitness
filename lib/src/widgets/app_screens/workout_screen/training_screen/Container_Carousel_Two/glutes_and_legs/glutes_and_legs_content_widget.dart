import 'package:flutter/material.dart';

import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class GlutesAndLegsContent extends StatelessWidget {
  const GlutesAndLegsContent({super.key});

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
              'assets/images/training_image/workout_image/glutes_and_legs/Pistol squats.gif',
          exerciseText: 'Приседания с пистолетом',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Приседания с пистолетом: станьте на одну ногу, другую прямо вытяните вперед. Медленно опуститесь, сгибая работающее колено, как бы делая присед на одной ноге. Вернитесь в исходное положение. Укрепляйте ноги и баланс. Повторяйте на каждой ноге. ',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fglutes%20and%20legs%2FPistol%20squats.mp4?alt=media&token=26f950f1-f67e-4e46-81e3-ca0fe54202c8',
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
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Kettlebell goblet squat.gif',
          exerciseText: 'Приседание с гирей',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Приседание с гирей: возьмите гирю, держа ее на уровне груди или плеч. Станьте прямо, опуститесь в присед до параллели с полом, затем поднимитесь. Укрепляйте ноги и ягодицы. Повторяйте для силы и тонуса. ',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FKettlebell%20goblet%20squat.mp4?alt=media&token=9f0a0ab3-bbd2-4c0f-b456-320d08bbd21f',
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
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/glutes_and_legs/Glute bridge.gif',
          exerciseText: 'Ягодичный мостик',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Ягодичный мостик: лягте на спину, согните ноги и поставьте стопы на полу. Медленно поднимите бедра вверх, сжимая ягодицы. Задержитесь на верхней точке, затем медленно опуститесь обратно. Укрепляйте ягодицы и спину. Повторяйте для силы и тонуса. ',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fglutes%20and%20legs%2FGlute%20bridge.mp4?alt=media&token=80ee43cd-dfc8-4b8b-914e-843fb5d68de1',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/your_body/Lunge jumps.gif',
          exerciseText: 'Прыжки с выпадом',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Прыжки с выпадом: станьте в исходное положение с ногами на ширине плеч. Сделайте шаг вперед и опуститесь в позу выпада, затем мощно прыгните вверх, меняя положение ног. Повторяйте на обеих ногах для укрепления ног и ягодиц.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FLunge%20jumps.mp4?alt=media&token=47c7a295-96e5-47fc-a022-b33b184c12b1',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/glutes_and_legs/Bench leg raises.gif',
          exerciseText: 'Подъемы ног на скамье',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Подъемы ног на скамье: лягте на спину, положите руки под ягодицы для поддержки. Поднимите ноги прямо вверх, согнув их в коленях под прямым углом. Медленно опустите ноги обратно. Укрепляйте нижнюю часть живота. Повторяйте для силы и стабильности. ',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fglutes%20and%20legs%2FBench%20leg%20raises.mp4?alt=media&token=b2e3e1e4-6130-46fc-8d44-4766f4b668b6',
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
        ),
        CustomDivider(),
      ],
    );
  }
}
