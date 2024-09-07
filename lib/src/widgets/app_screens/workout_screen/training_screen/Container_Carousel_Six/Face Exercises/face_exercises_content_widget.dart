import 'package:flutter/material.dart';
import '../../../../divider_your_body_widget.dart'; // Убедитесь, что путь к импорту корректен
import '../../../exercise_widget.dart'; // Убедитесь, что путь к импорту корректен

class FaceExercisesThighsContent extends StatelessWidget {
  const FaceExercisesThighsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Semantics(
          label: 'Разделитель',
          child:
              const CustomDivider(), // Предположительно, CustomDivider - это стилизованная версия Divider
        ),
        Semantics(
          label: 'Упражнение AEIOU',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/_AEIOU_.png',
            exerciseText: 'AEIOU',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Упражнение для лица: Формирование "О" губами и удерживание этой позы на несколько секунд, затем расслабление. Это упражнение может помочь укрепить мышцы щек и губ.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2F_AEIOU_.mp4?alt=media&token=81f76b66-4b07-49ba-8c86-69372844c38f',
            semanticLabel:
                'Упражнение AEIOU, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение CHEEK FIRMER',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/CHEEK_FIRMER.png',
            exerciseText: 'CHEEK FIRMER',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Улыбнитесь широко, вытягивая губы к ушам. Напрягите щеки к зубам, удерживая 5-10 секунд. Расслабьте мускулатуру. Повторите 10-15 раз. Это упражнение поможет укрепить и тонизировать мышцы щек и подтянуть контуры лица.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FCHEEK%20FIRMER.mp4?alt=media&token=04abd626-5d3a-4d87-b83f-85395ba449cd',
            semanticLabel:
                'Упражнение CHEEK FIRMER, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение DRAWN CHEEKS',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/DRAWN_CHEEKS.png',
            exerciseText: 'DRAWN CHEEKS',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, помогая себе руками, чтобы натянуть кожу на скулах. Напрягите мышцы щек и удерживайте на 5-10 секунд. Расслабьте щеки и повторите 10-15 раз. Это упражнение укрепляет и подтягивает мышцы щек, делая контуры лица более выразительными.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FDRAWN%20CHEEKS.mp4?alt=media&token=ed8bfa2e-f5a6-47d6-a6aa-600768643e65',
            semanticLabel:
                'Упражнение DRAWN CHEEKS, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение EYE LIFT',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/EYE_LIFT.png',
            exerciseText: 'EYE LIFT',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, закройте глаза. Напрягите мышцы вокруг глаз, поднимая брови как можно выше. Удерживайте на 5-10 секунд, затем расслабьте и повторите 10-15 раз. Это упражнение укрепляет и подтягивает кожу вокруг глаз, уменьшая морщины и придавая более молодой вид.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FEYE%20LIFT.mp4?alt=media&token=5f3c4c14-ac8f-49b2-be47-f0461c41aebf',
            semanticLabel:
                'Упражнение EYE LIFT, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение EYES CIRCLES',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/EYES_CIRCLES.png',
            exerciseText: 'EYES CIRCLES',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, закройте глаза. Нарисуйте круговые движения глазами в одном направлении, затем в другом. Повторите по 10-15 раз в каждом направлении. Это упражнение улучшает кровообращение, снимает напряжение и усталость глаз, а также улучшает тонус кожи и уменьшает появление морщин.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FEYES%20CIRCLES.mp4?alt=media&token=3391646c-6e98-415a-bf9a-48e45720a791',
            semanticLabel:
                'Упражнение EYES CIRCLES, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение JAW LINE',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/JAW_LINE.png',
            exerciseText: 'JAW LINE',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, наклонитесь назад, поднимая лицо к потолку. Сморщите губы, поднимая нижнюю часть лица и подбородок. Удерживайте позу 5-10 секунд, затем расслабьте и повторите 10-15 раз. Это упражнение укрепляет мышцы подбородка и придает контур и подтянутость лицу.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FJAW%20LINE.mp4?alt=media&token=a824229a-a12e-48bc-b2ca-2ba0de77f7fd',
            semanticLabel:
                'Упражнение JAW LINE, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение LION',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/LION.png',
            exerciseText: 'LION',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, откройте рот широко и высуньте язык. Поверните глаза вверх и напрягите лицевые мышцы. Удерживайте на 5-10 секунд, затем расслабьте и повторите 10-15 раз. Это упражнение помогает укрепить и растянуть мышцы лица, улучшая контур и тонус кожи.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FLION.mp4?alt=media&token=6c1dc0ba-6351-4f06-a29f-992742fc7a12',
            semanticLabel:
                'Упражнение LION, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение NOSE TOUCHING',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/NOSE_TOUCHING.png',
            exerciseText: 'NOSE TOUCHING',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, расслабьте плечи. Вытяните язык к носу или как можно ближе. Удерживайте на несколько секунд, затем вернитесь в исходное положение. Повторите несколько раз. Упражнение укрепляет и растягивает мышцы языка и лица, повышая их тонус и гибкость.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FNOSE%20TOUCHING.mp4?alt=media&token=43c2bcfe-ba33-4d16-9d1f-94a5a571cf2b',
            semanticLabel:
                'Упражнение NOSE TOUCHING, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение PUFFY CHEEKS',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/PUFFY_CHEEKS.png',
            exerciseText: 'PUFFY CHEEKS',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, расслабьте плечи. Надуйте щеки воздухом, удерживая его 5-10 секунд. Медленно выдохните и расслабьте щеки. Повторите несколько раз. Это упражнение укрепляет и тонизирует мышцы щек, уменьшая пухлость и подтягивая лицо.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FPUFFY%20CHEEKS.mp4?alt=media&token=ad8be357-e50c-4338-9b11-fa68bb894222',
            semanticLabel:
                'Упражнение PUFFY CHEEKS, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение SMILE',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/SMILE.png',
            exerciseText: 'SMILE',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Сядьте прямо, расслабьте плечи. Широко улыбнитесь, удерживая на несколько секунд. Расслабьте мышцы и повторите. Укрепляет и подтягивает мышцы лица, делает контур более ярким и выразительным.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FSMILE.mp4?alt=media&token=12941ffa-b6a7-441b-a686-3a9005482f5a',
            semanticLabel:
                'Упражнение SMILE, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение UNDERCHIN DUCK',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/UNDERCHIN_DUCK.png',
            exerciseText: 'UNDERCHIN DUCK',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Подтяните подбородок к шее, удерживайте на несколько секунд, расслабьте и повторите. Это укрепляет мышцы подбородка и шеи, борется с двойным подбородком и придает лицу более подтянутый контур.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FUNDERCHIN%20DUCK.mp4?alt=media&token=de0de133-0d95-4c5f-bc9e-8aaa348c951c',
            semanticLabel:
                'Упражнение UNDERCHIN DUCK, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение SMILING FISH FACE',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/SMILING_FISH_FACE.png',
            exerciseText: 'SMILING FISH FACE',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Широкая улыбка, затем рыбья гримаса с выпяченными щеками. Удерживайте позу, повторите. Упражнение укрепляет и тонизирует мышцы лица, делая контур более выразительным.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FSMILING%20FISH%20FACE.mp4?alt=media&token=ffb3d7ee-9e79-4d37-b9fd-5d0960ff87fc',
            semanticLabel:
                'Упражнение SMILING FISH FACE, длительность 30 секунд, 3 повторения.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
      ],
    );
  }
}
