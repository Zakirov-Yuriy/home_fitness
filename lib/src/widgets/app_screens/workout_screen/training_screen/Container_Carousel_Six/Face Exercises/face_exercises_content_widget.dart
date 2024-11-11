import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/_AEIOU_.png',
            exerciseText: S.of(context).AEIOU,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).AEIOU_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/CHEEK_FIRMER.png',
            exerciseText: S.of(context).CHEEK_FIRMER,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).CHEEK_FIRMER_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/DRAWN_CHEEKS.png',
            exerciseText: S.of(context).DRAWN_CHEEKS,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).DRAWN_CHEEKS_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/EYE_LIFT.png',
            exerciseText: S.of(context).EYE_LIFT,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).EYE_LIFT_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/EYES_CIRCLES.png',
            exerciseText: S.of(context).EYES_CIRCLES,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).EYES_CIRCLES_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/JAW_LINE.png',
            exerciseText: S.of(context).JAW_LINE,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).AW_LINE_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/LION.png',
            exerciseText: S.of(context).LION,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).LION_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/NOSE_TOUCHING.png',
            exerciseText: S.of(context).NOSE_TOUCHING,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).NOSE_TOUCHING_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/PUFFY_CHEEKS.png',
            exerciseText: S.of(context).PUFFY_CHEEKS,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).PUFFY_CHEEKS_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/SMILE.png',
            exerciseText: S.of(context).SMILE,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).SMILE_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/UNDERCHIN_DUCK.png',
            exerciseText: S.of(context).UNDERCHIN_DUCK,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).UNDERCHIN_DUCK_description,
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
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Face exercises/SMILING_FISH_FACE.png',
            exerciseText: S.of(context).SMILING_FISH_FACE,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).SMILING_FISH_FACE_description,
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
