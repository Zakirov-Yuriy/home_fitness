import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class BiggerBootyContent extends StatelessWidget {
  const BiggerBootyContent({super.key});

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
          label: 'Приседания с весом тела',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Bigger booty/Bodyweight squats.gif',
            exerciseText: S.of(context).Body_weight_squats,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Body_weight_squats_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FBigger%20booty%2FBodyweight%20squats.mp4?alt=media&token=d5d755a5-1c5a-4361-8b83-8cf85a2aad98',
            semanticLabel:
                'Упражнение Приседания с весом тела. Станьте прямо, ноги на ширине плеч. Распределите вес тела на пятки и поднимите грудь. Согните колени и опуститесь вниз, как будто садитесь на стул. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Боковые скрещивания ног',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Bigger booty/on side leg crossovers.gif',
            exerciseText: S.of(context).Side_Leg_Crosses,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Side_Leg_Crosses_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FBigger%20booty%2Fon%20side%20leg%20crossovers.mp4?alt=media&token=7bbb3a89-da88-47c2-9e47-f5ffc8422bfe',
            semanticLabel:
                'Упражнение Боковые скрещивания ног. Лягте на бок, упритесь на предплечья и локти. Согните верхнюю ногу и положите ее на пол перед нижней ногой. Напрягите боковые мышцы пресса и поднимите нижнюю ногу, скрестив ее над верхней ногой. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Прыжки с выпадом',
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
                'Упражнение Прыжки с выпадом. Сделайте шаг вперед, выпадая на одну ногу, затем прыгайте вверх и меняйте ноги в воздухе. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Обратный выпад с поднятой передней ногой',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/Bigger booty/Reverse lunge with elevated front leg.gif',
            exerciseText: S.of(context).Reverse_lunge_with_front_leg_raised,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText:
                S.of(context).Reverse_lunge_with_front_leg_raised_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FBigger%20booty%2FReverse%20lunge%20with%20elevated%20front%20leg.mp4?alt=media&token=f5633a43-e6ca-48b9-87a9-3b0fe79e45c1',
            semanticLabel:
                'Упражнение Обратный выпад с поднятой передней ногой. Станьте прямо, поднимите одну ногу назад, согнув ее в колене. Опустите таз, согнув другую ногу в колене. Поднимите таз обратно. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Подтягивание бедра',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/belly_fat_burner/Hip thruster.gif',
            exerciseText: S.of(context).Thigh_Tuck,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Thigh_Tuck_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2FHip%20thruster.mp4?alt=media&token=3f8fccac-4d82-4ba4-bc8e-9441d0bc08c6',
            semanticLabel:
                'Упражнение Подтягивание бедра. Сядьте на тренажер для подтягивания бедра, настройте вес и выберите желаемый уровень нагрузки. Разместите подкладку на нужном уровне, чтобы верхняя часть бедра была поддержана. Согните бедро и поднимите его, затем медленно опустите. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Гребля на одной ноге',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/legs_and_thighs/one leg row.gif',
            exerciseText: S.of(context).Rowing_on_one_leg,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Rowing_on_one_leg_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fone%20leg%20row.mp4?alt=media&token=94b0a388-22e0-40a0-83e8-969429d341f6',
            semanticLabel:
                'Упражнение Гребля на одной ноге. Сидя на тренажере, удерживая рукоятку, двигайте ногу вперед и назад, эмулируя движение гребли. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Ягодичный мостик и подъем ног',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/belly_fat_burner/Glute bridge to leg raise.gif',
            exerciseText: S.of(context).Glute_bridge_and_leg_lifts,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Glute_bridge_and_leg_lift_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2FGlute%20bridge%20to%20leg%20raise.mp4?alt=media&token=d8010723-953f-4616-943e-a050d45e1c30',
            semanticLabel:
                'Упражнение Ягодичный мостик и подъем ног. Лягте на спину, согните ноги. Поднимите бедра, напрягая ягодицы. Поднимите ногу вверх, затем медленно опустите. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Ослиные удары',
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
                'Упражнение Ослиные удары. Начните в положении стойки на четвереньках. Отклоняйте одну ногу назад и поднимайте ее высоко наверх. Повторите с другой ногой. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        Semantics(
          label: 'Разделитель',
          child: const CustomDivider(),
        ),
        Semantics(
          label: 'Болгарские приседания',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/legs_and_thighs/bulgarian split squats.gif',
            exerciseText: S.of(context).Bulgarian_squats,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Bulgarian_squats_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FLegs%20and%20thighs%2Fbulgarian%20split%20squats.mp4?alt=media&token=5fff8dc5-1b80-4882-bbb4-615636a0aa82',
            semanticLabel:
                'Упражнение Болгарские приседания. Станьте спиной к скамье, поставьте одну ногу на нее, другая нога впереди. Опуститесь в присед, сгибая переднюю ногу, затем поднимитесь. Длительность: 3 повторения по 60 секунд.',
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
