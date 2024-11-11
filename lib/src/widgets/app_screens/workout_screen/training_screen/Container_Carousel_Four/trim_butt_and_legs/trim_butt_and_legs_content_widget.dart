import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';

import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class TrimButtAndLegsContent extends StatelessWidget {
  const TrimButtAndLegsContent({super.key});

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
          label:
              'Приседание с боковым подъемом ног. Длительность: 3 повторения по 30 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/Squat with lateral leg raise.gif',
            exerciseText: S.of(context).Squat_with_side_leg_raise,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Squat_with_side_leg_raise_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FSquat%20with%20lateral%20leg%20raise.mp4?alt=media&token=d0e45874-1d73-429b-9028-c9030fd9973c',
            semanticLabel:
                'Упражнение Приседание с боковым подъемом ног. Сделайте приседание и поднимите одну ногу в сторону. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Flutter kicks. Длительность: 3 повторения по 60 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/Flutter kicks.gif',
            exerciseText: S.of(context).Flitter_kickx,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Flitter_kickx_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FFlutter%20kicks.mp4?alt=media&token=2182fb52-1efe-4741-aeac-81507adebf07',
            semanticLabel:
                'Упражнение Flutter kicks. Лягте на спину, поднимите ноги и совершайте маленькие, быстрые движения вверх и вниз. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label:
              'Прыжки с скрещиванием на одной ноге. Длительность: 3 повторения по 30 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/One leg crossover jumps.gif',
            exerciseText: S.of(context).Jumping_with_crossing_on_one_leg,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText:
                S.of(context).Jumping_with_crossing_on_one_leg_descrption,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FOne%20leg%20crossover%20jumps.mp4?alt=media&token=a60a920d-2b11-4262-b98d-7f4e3eb52be2',
            semanticLabel:
                'Упражнение Прыжки с скрещиванием на одной ноге. Встаньте на одну ногу, согните другую и подтяните ее к груди. Прыгайте, скрещивая ноги в воздухе. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Подъем одной ноги. Длительность: 3 повторения по 30 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/Squat dumbbell oblique raises.gif',
            exerciseText: S.of(context).Single_Leg_Raise,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Single_Leg_Raise_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FDumbbell%20step%20up.mp4?alt=media&token=bd39fc3b-c677-416e-9e2a-b0ee7e80edb9',
            semanticLabel:
                'Упражнение Подъем одной ноги. Приседания с гантелями и косые подъемы. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label:
              'Подтягивания с гантелями. Длительность: 3 повторения по 60 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/Dumbbell step up.gif',
            exerciseText: S.of(context).Pull_ups_with_dumbbells,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Pull_ups_with_dumbbells_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FDumbbell%20step%20up.mp4?alt=media&token=bd39fc3b-c677-416e-9e2a-b0ee7e80edb9',
            semanticLabel:
                'Упражнение Подтягивания с гантелями. Наступите на скамью одной ногой и поднимите другую. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label:
              'Подъемы икры с приседаниями. Длительность: 3 повторения по 60 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/Plie squat calf raises.gif',
            exerciseText: S.of(context).Calf_raises_with_squats,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Calf_raises_with_squats_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FPlie%20squat%20calf%20raises.mp4?alt=media&token=c4005e7d-cbbf-4efb-97d6-8f9955fb0950',
            semanticLabel:
                'Упражнение Подъемы икры с приседаниями. Сделайте приседание и поднимите пятки. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Достижение планки. Длительность: 3 повторения по 60 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/Plank reach through.gif',
            exerciseText: S.of(context).Reaching_the_Bar,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Reaching_the_Bar_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FPlank%20reach%20through.mp4?alt=media&token=b44d2327-2ea0-4810-ae74-7255c928ebe5',
            semanticLabel:
                'Упражнение Достижение планки. Лягте на пол, опираясь на предплечья и носки, создавая прямую линию. Напрягите корпус и удерживайте позу. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label:
              'Приседания с пистолетом. Длительность: 3 повторения по 60 секунд.',
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
                'Упражнение Приседания с пистолетом. Станьте на одну ногу и опуститесь, сгибая колено. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Приседания у стены. Длительность: 3 повторения по 30 секунд.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/trim butt and legs/Frog jumps.gif',
            exerciseText: S.of(context).frog_jumps,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).frog_jumps_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftrim%20butt%20and%20legs%2FFrog%20jumps.mp4?alt=media&token=184a5df0-29b4-45c2-a745-5066acbb3c24',
            semanticLabel:
                'Упражнение Приседания у стены. Сделайте широкий присед и прыгните вверх. Длительность: 3 повторения по 30 секунд.',
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
