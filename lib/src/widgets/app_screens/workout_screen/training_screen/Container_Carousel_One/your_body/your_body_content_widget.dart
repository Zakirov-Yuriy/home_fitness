import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';

import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class YourBodyContent extends StatelessWidget {
  const YourBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Semantics(
          label: 'Разделитель',
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Semantics(
          label: 'Упражнение Бег',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/Running.gif',
            exerciseText: S.of(context).Running, // Заголовок упражнения Бег
            setText: S.of(context).Duration, // Длительность
            durationText:
                S.of(context).three_repeat_60s, // Повторения упражнения
            subtitleText: S.of(context).bug_description, //Описание упражнения
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FRunning.mp4?alt=media&token=fca48f8e-2d90-4e4e-a753-087fbd205304',
            semanticLabel:
                'Упражнение Бег. Отличная кардионагрузка, укрепляющая ноги и ягодицы. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Сумо приседания прыжки',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/sumo squat jumps.gif',
            exerciseText: S.of(context).Sumo_squats_jumping,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Sumo_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2Fsumo%20squat%20jumps.mp4?alt=media&token=649dd7fd-d562-4b55-b9b9-1415f53789e7',
            semanticLabel:
                'Упражнение Сумо приседания прыжки. Приседания с широким расставлением ног с прыжками вверх. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Горные альпинисты',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/MOUNTAIN CLIMBER.gif',
            exerciseText: S.of(context).Mountain_climbers,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Mountain_climbers_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FMOUNTAIN%20CLIMBER.mp4?alt=media&token=102f5ae1-f21e-4869-aadb-4d529db4deaa',
            semanticLabel:
                'Упражнение Горные альпинисты. Подтягивание колена к груди в планке. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Звездный прыжок',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/Touch ground star jump.gif',
            exerciseText: S.of(context).Star_Leap,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Star_Leap_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FTouch%20ground%20star%20jump.mp4?alt=media&token=d2698a1f-d1a2-453c-adf4-92fb5e145cd4',
            semanticLabel:
                'Упражнение Звездный прыжок. Выпрыгивание вверх с расправленными руками и ногами. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Боксерские джебы',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/boxing jabs.gif',
            exerciseText: S.of(context).Boxing_Jabs,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).Boxing_Jabs_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2Fboxing_jabs.mp4?alt=media&token=f010f66f-46b1-46c9-9e49-d3dd2de48c77',
            semanticLabel:
                'Упражнение Боксерские джебы. Быстрые короткие удары левой и правой рукой. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Высокие колени',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/higt knees.gif',
            exerciseText: S.of(context).High_Knees,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_repeat_60s,
            subtitleText: S.of(context).High_Knees_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2Fhigt_knees.mp4?alt=media&token=f9742b8d-5671-4b1c-b1ea-22c7cbbad95e',
            semanticLabel:
                'Упражнение Высокие колени. Бег на месте с поднятием колен выше. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Прыжки с выпадом',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/Lunge jumps.gif',
            exerciseText: S.of(context).Lunge_jumping,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Lunge_jumping_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FLunge%20jumps.mp4?alt=media&token=47c7a295-96e5-47fc-a022-b33b184c12b1',
            semanticLabel:
                'Упражнение Прыжки с выпадом. Шаг вперед в выпад и прыжок с заменой ног. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        const CustomDivider(),
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
                'Упражнение Боковые выпады. Шаг вбок с согнутым коленом. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Боковые подъемы бедер',
          child: ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/On side hip raises.gif',
            exerciseText: S.of(context).Lateral_hip_raises,
            setText: S.of(context).Duration,
            durationText: S.of(context).three_rep_30s,
            subtitleText: S.of(context).Lateral_hip_raises_description,
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FOn%20side%20hip%20raises.mp4?alt=media&token=9c7e856c-a192-4325-bf76-d866c1ab8412',
            semanticLabel:
                'Упражнение Боковые подъемы бедер. Подъем верхней ноги, лежа на боку. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
