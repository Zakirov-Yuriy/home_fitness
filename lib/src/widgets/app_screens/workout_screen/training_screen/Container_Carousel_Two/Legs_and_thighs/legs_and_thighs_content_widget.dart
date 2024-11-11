import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';

import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class LegsAndThighsContent extends StatelessWidget {
  const LegsAndThighsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/your_body/higt knees.gif',
          exerciseText: S.of(context).High_Knees,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_repeat_60s,
          subtitleText: S.of(context).High_Knees_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2Fhigt_knees.mp4?alt=media&token=f9742b8d-5671-4b1c-b1ea-22c7cbbad95e',
          semanticLabel:
              'Упражнение Высокие колени, длительность 60 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/your_body/Lateral lunges.gif',
          exerciseText: S.of(context).Side_lunges,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_rep_30s,
          subtitleText: S.of(context).Side_lunges_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FLateral_lunges.mp4?alt=media&token=e8e2410b-5fe3-4bb9-b737-fcb0e6f25939',
          semanticLabel:
              'Упражнение Боковые выпады, длительность 30 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Kettlebell goblet squat.gif',
          exerciseText: S.of(context).Kettlebell_Squat,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_repeat_60s,
          subtitleText: S.of(context).Kettlebell_Squat_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FKettlebell%20goblet%20squat.mp4?alt=media&token=9f0a0ab3-bbd2-4c0f-b456-320d08bbd21f',
          semanticLabel:
              'Упражнение Приседание с гирей, длительность 60 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/one leg row.gif',
          exerciseText: S.of(context).Rowing_on_one_leg,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_repeat_60s,
          subtitleText: S.of(context).Rowing_on_one_leg_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fone%20leg%20row.mp4?alt=media&token=94b0a388-22e0-40a0-83e8-969429d341f6',
          semanticLabel:
              'Упражнение Гребля на одной ноге, длительность 60 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/bulgarian split squats.gif',
          exerciseText: S.of(context).Bulgarian_squats,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_repeat_60s,
          subtitleText: S.of(context).Bulgarian_squats_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fbulgarian%20split%20squats.mp4?alt=media&token=5fff8dc5-1b80-4882-bbb4-615636a0aa82',
          semanticLabel:
              'Упражнение Болгарские приседания, длительность 60 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/your_body/Running.gif',
          exerciseText: S.of(context).Running,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_repeat_60s,
          subtitleText: S.of(context).bug_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FRunning.mp4?alt=media&token=fca48f8e-2d90-4e4e-a753-087fbd205304',
          semanticLabel:
              'Упражнение Бег, длительность 60 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Donkey kicks.gif',
          exerciseText: S.of(context).Donkey_Kicks,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_rep_30s,
          subtitleText: S.of(context).Donkey_Kicks_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FDonkey%20kicks.mp4?alt=media&token=799d8abd-5b46-49ba-b7ae-b95e3184c205',
          semanticLabel:
              'Упражнение Ослиные удары, длительность 30 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Dumbbell squat and press.gif',
          exerciseText: S.of(context).Squats_and_dumbbell_press,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_rep_30s,
          subtitleText: S.of(context).Squats_and_dumbbell_press_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FDumbbell%20squat%20and%20press.mp4?alt=media&token=937eebd5-8ac8-4756-92fe-7c1059c7e391',
          semanticLabel:
              'Упражнение Приседания и жим гантелей, длительность 30 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/one leg deadlift.gif',
          exerciseText: S.of(context).Single_Leg_Raise,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_rep_30s,
          subtitleText: S.of(context).Single_Leg_Raise_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fone%20leg%20deadlift.mp4?alt=media&token=2274383f-50d2-42c7-b5b8-1376ccc5e9d6',
          semanticLabel:
              'Упражнение Подъем одной ноги, длительность 30 секунд, 3 повторения.',
        ),
        const CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/legs_and_thighs/Wall squats.gif',
          exerciseText: S.of(context).Wall_Squats,
          setText: S.of(context).Duration,
          durationText: S.of(context).three_rep_30s,
          subtitleText: S.of(context).Wall_Squats_description,
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FWall%20squats.mp4?alt=media&token=fd328fe3-a39c-4b6a-93f0-986b68c015cc',
          semanticLabel:
              'Упражнение Приседания у стены, длительность 30 секунд, 3 повторения.',
        ),
        const CustomDivider(),
      ],
    );
  }
}
