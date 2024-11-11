import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';

import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class GlutesAndLegsContent extends StatelessWidget {
  const GlutesAndLegsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Semantics(
          label: 'Разделитель',
          child: const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Semantics(
          label: 'Упражнение Приседания с пистолетом',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/glutes_and_legs/Pistol squats.gif',
            exerciseText: S.of(context).Pistol_Squats,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Pistol_Squats_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fglutes%20and%20legs%2FPistol%20squats.mp4?alt=media&token=26f950f1-f67e-4e46-81e3-ca0fe54202c8',
            semanticLabel:
                'Упражнение Приседания с пистолетом. Приседания на одной ноге, другая нога вытянута вперед. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Боковые выпады',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/Lateral lunges.gif',
            exerciseText: S.of(context).Side_lunges,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Side_lunges_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FLateral_lunges.mp4?alt=media&token=e8e2410b-5fe3-4bb9-b737-fcb0e6f25939',
            semanticLabel:
                'Упражнение Боковые выпады. Шаг вбок с сгибанием одной ноги в колене. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Приседание с гирей',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/legs_and_thighs/Kettlebell goblet squat.gif',
            exerciseText: S.of(context).Kettlebell_Squat,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Kettlebell_Squat_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FKettlebell%20goblet%20squat.mp4?alt=media&token=9f0a0ab3-bbd2-4c0f-b456-320d08bbd21f',
            semanticLabel:
                'Упражнение Приседание с гирей. Приседания с гирей на уровне груди. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Ослиные удары',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/legs_and_thighs/Donkey kicks.gif',
            exerciseText: S.of(context).Donkey_Kicks,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Donkey_Kicks_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FDonkey%20kicks.mp4?alt=media&token=799d8abd-5b46-49ba-b7ae-b95e3184c205',
            semanticLabel:
                'Упражнение Ослиные удары. Поднимание ноги назад в положении на четвереньках. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Подъем одной ноги',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/legs_and_thighs/one leg deadlift.gif',
            exerciseText: S.of(context).Single_Leg_Raise,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Single_Leg_Raise_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fone%20leg%20deadlift.mp4?alt=media&token=2274383f-50d2-42c7-b5b8-1376ccc5e9d6',
            semanticLabel:
                'Упражнение Подъем одной ноги. Подъем ноги на скамейке с согнутым коленом. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Ягодичный мостик',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/glutes_and_legs/Glute bridge.gif',
            exerciseText: S.of(context).Gluteal_Bridge,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Gluteal_Bridge_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fglutes%20and%20legs%2FGlute%20bridge.mp4?alt=media&token=80ee43cd-dfc8-4b8b-914e-843fb5d68de1',
            semanticLabel:
                'Упражнение Ягодичный мостик. Подъем бедер с сжатием ягодиц в положении лежа. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Прыжки с выпадом',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/Lunge jumps.gif',
            exerciseText: S.of(context).Lunge_jumping,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Lunge_jumping_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FLunge%20jumps.mp4?alt=media&token=47c7a295-96e5-47fc-a022-b33b184c12b1',
            semanticLabel:
                'Упражнение Прыжки с выпадом. Шаг вперед в выпад и прыжок вверх, меняя ноги. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Подъемы ног на скамье',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/glutes_and_legs/Bench leg raises.gif',
            exerciseText: S.of(context).Leg_raises_on_a_bench,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Leg_raises_on_a_bench_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fglutes%20and%20legs%2FBench%20leg%20raises.mp4?alt=media&token=b2e3e1e4-6130-46fc-8d44-4766f4b668b6',
            semanticLabel:
                'Упражнение Подъемы ног на скамье. Подъем ног в положении лежа с поддержкой рук под ягодицами. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Упражнение Приседания у стены',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/legs_and_thighs/Wall squats.gif',
            exerciseText: S.of(context).Wall_Squats,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Wall_Squats_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2FWall%20squats.mp4?alt=media&token=fd328fe3-a39c-4b6a-93f0-986b68c015cc',
            semanticLabel:
                'Упражнение Приседания у стены. Приседания у стены с опорой спиной. Длительность: 3 повторения по 30 секунд.',
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
