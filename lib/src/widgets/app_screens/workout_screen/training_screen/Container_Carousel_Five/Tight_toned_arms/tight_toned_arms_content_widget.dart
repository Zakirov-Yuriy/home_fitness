import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class TightTonedArmsThighsContent extends StatelessWidget {
  const TightTonedArmsThighsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        Semantics(
          label:
              'Упражнение: Подъем гантелей вперед. Длительность 3 повторение по 60 секунд. Подъем гантелей вперед: Возьмите гантели в каждую руку, станьте прямо. Поднимите гантели вперед, сохраняя прямые руки и контролируя движение. Вернитесь в исходное положение с контролем.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/Front dumbbel raise.gif',
            exerciseText: S.of(context).Dumbbell_Forward_Raise,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Dumbbell_Forward_Raise_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FFront%20dumbbel%20raise.mp4?alt=media&token=a3b51ef1-7621-423c-8612-af4db404580f',
            semanticLabel:
                'Упражнение Подъем гантелей вперед. Длительность: 3 повторения по 60 секунд. Возьмите гантели в каждую руку, станьте прямо. Поднимите гантели вперед, сохраняя прямые руки и контролируя движение.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Верхний жим трицепса. Длительность 3 повторение по 30 секунд. Верхний жим трицепса: Лягте на скамью или пол, возьмите гантели в руки над грудью с прямыми руками. Согните руки в локтях, опуская гантели к голове. Вернитесь в исходное положение, поднимая гантели вверх.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/tricep overhead press.gif',
            exerciseText: S.of(context).Upper_triceps_press,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Upper_triceps_press_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Ftricep%20overhead%20press.mp4?alt=media&token=e13791d8-25d0-4301-afda-a52de66833c4',
            semanticLabel:
                'Упражнение Верхний жим трицепса. Длительность: 3 повторения по 30 секунд. Лягте на скамью или пол, возьмите гантели в руки над грудью с прямыми руками. Согните руки в локтях, опуская гантели к голове. Вернитесь в исходное положение, поднимая гантели вверх.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Приседания и жим гантелей. Длительность 3 повторение по 60 секунд. Приседания и жим гантелей: Возьмите гантели в каждую руку, станьте прямо. Сделайте приседание, затем поднимите гантели к плечам. Отталкивайтесь от пят, выполняя жим гантелей вверх.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/dumbbell squat and press.gif',
            exerciseText: S.of(context).Squats_and_dumbbell_press,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Squats_and_dumbbell_press_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20squat%20and%20press.mp4?alt=media&token=4c53d253-377f-49b6-83e1-551132e2ae1f',
            semanticLabel:
                'Упражнение Приседания и жим гантелей. Длительность: 3 повторения по 60 секунд. Возьмите гантели в каждую руку, станьте прямо. Сделайте приседание, затем поднимите гантели к плечам. Отталкивайтесь от пят, выполняя жим гантелей вверх.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Гантельный ряд с наклоном. Длительность 3 повторение по 60 секунд. Гантельный ряд с наклоном: Возьмите гантели в каждую руку, станьте прямо. Наклонитесь вперед, держа гантели перед собой. Поднимите гантели к телу, сокращая лопатки. Спускайте гантели обратно и повторите.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/dumbbell bent over row.gif',
            exerciseText: S.of(context).Dumbbell_row_with_slope,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Dumbbell_row_with_slope_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20bent%20over%20row.mp4?alt=media&token=bcbf3069-67d3-443b-b15b-7aefbde4e0b2',
            semanticLabel:
                'Упражнение Гантельный ряд с наклоном. Длительность: 3 повторения по 60 секунд. Возьмите гантели в каждую руку, станьте прямо. Наклонитесь вперед, держа гантели перед собой. Поднимите гантели к телу, сокращая лопатки.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Подъем гантелей. Длительность 3 повторение по 60 секунд. Подъем гантелей: Возьмите гантели в каждую руку, станьте прямо. Поднимите гантели к плечам, сохраняя прямые руки и контролируя движение. Спустите гантели обратно и повторите.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/dumbbell step up.gif',
            exerciseText: S.of(context).Dumbbell_Raise,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Dumbbell_Raise_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20step%20up.mp4?alt=media&token=d8dd9b1a-d6c1-4d34-b0b4-1e6eae71a135',
            semanticLabel:
                'Упражнение Подъем гантелей. Длительность: 3 повторения по 60 секунд. Возьмите гантели в каждую руку, станьте прямо. Поднимите гантели к плечам, сохраняя прямые руки и контролируя движение.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Махи с гантелями. Длительность 3 повторение по 60 секунд. Махи с гантелями: Возьмите гантели в руки, станьте прямо. Разведите руки в стороны, поднимая гантели до уровня плеч. Медленно опустите гантели обратно и повторите движение.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/dumbbell peck fly.gif',
            exerciseText: S.of(context).Swings_with_dumbbells,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Swings_with_dumbbells_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2Fdumbbell%20peck%20fly.mp4?alt=media&token=a4eb17b1-4bae-4f6c-baf4-44906e27ed65',
            semanticLabel:
                'Упражнение Махи с гантелями. Длительность: 3 повторения по 60 секунд. Возьмите гантели в руки, станьте прямо. Разведите руки в стороны, поднимая гантели до уровня плеч. Медленно опустите гантели обратно и повторите движение.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Скручивание молота стоя. Длительность 3 повторение по 30 секунд. Скручивание молота стоя: Возьмите гантель в руку, станьте прямо. Поднимите гантель перед собой на уровень плеч. Поворачивайте торс в сторону противоположной руке, скручивая корпус. Вернитесь в исходное положение и повторите на другой стороне.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/Standing hammer curl.gif',
            exerciseText: S.of(context).Standing_hammer_curl,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Standing_hammer_curl_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FStanding%20hammer%20curl.mp4?alt=media&token=2a4e2406-a186-4dc3-be0b-342401f82af0',
            semanticLabel:
                'Упражнение Скручивание молота стоя. Длительность: 3 повторения по 30 секунд. Возьмите гантель в руку, станьте прямо. Поднимите гантель перед собой на уровень плеч. Поворачивайте торс в сторону противоположной руке, скручивая корпус.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Военный жим гантелей в положении сидя. Длительность 3 повторение по 30 секунд. Военный жим гантелей в положении сидя: Сядьте на скамью с поддержкой спины. Возьмите гантели в руки и поднимите их к плечам. Выпрямите руки вверх, поднимая гантели над головой. Опустите гантели обратно к плечам и повторите движение.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/Seated dumbbell military press.gif',
            exerciseText:
                S.of(context).Military_dumbbell_press_in_a_seated_position,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S
                .of(context)
                .Military_dumbbell_press_in_a_seated_position_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FSeated%20dumbbell%20military%20press.mp4?alt=media&token=4b1ba2ef-23d2-4fb6-b35b-1622d01988d1',
            semanticLabel:
                'Упражнение Военный жим гантелей в положении сидя. Длительность: 3 повторения по 30 секунд. Сядьте на скамью с поддержкой спины. Возьмите гантели в руки и поднимите их к плечам. Выпрямите руки вверх, поднимая гантели над головой.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label:
              'Упражнение: Отжимания на одном колене. Длительность 3 повторение по 30 секунд. Отжимания на одном колене: Встаньте на колени и руки, поддерживая верхнее тело. Опустите верхнее тело, согнув руки в локтях. Вернитесь в исходное положение, выпрямив руки. Повторите упражнение на одном колене, затем переключитесь на другое.',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/tight_toned_arms/One knee push ups.gif',
            exerciseText: S.of(context).Push_ups_on_one_knee,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Push_ups_on_one_knee_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Ftight_toned_arms%2FOne%20knee%20push%20ups.mp4?alt=media&token=29c54022-90d3-44c5-a184-bb6c8ffbc63f',
            semanticLabel:
                'Упражнение Отжимания на одном колене. Длительность: 3 повторения по 30 секунд. Встаньте на колени и руки, поддерживая верхнее тело. Опустите верхнее тело, согнув руки в локтях. Вернитесь в исходное положение, выпрямив руки.',
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
