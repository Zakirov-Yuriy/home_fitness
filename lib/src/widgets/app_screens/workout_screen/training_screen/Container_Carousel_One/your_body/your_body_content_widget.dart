import 'package:flutter/material.dart';

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
          child: const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Semantics(
          label: 'Упражнение Бег',
          child: const ExerciseWidget(
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
                'Упражнение Бег. Отличная кардионагрузка, укрепляющая ноги и ягодицы. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Сумо приседания прыжки',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/sumo squat jumps.gif',
            exerciseText: 'Сумо приседания прыжки',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Сумо приседания с прыжками: станьте в позу с широким расставлением ног, носки наружу. Приседайте, затем с силой прыгайте вверх. Повторяйте для укрепления ног и кардио.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2Fsumo%20squat%20jumps.mp4?alt=media&token=649dd7fd-d562-4b55-b9b9-1415f53789e7',
            semanticLabel:
                'Упражнение Сумо приседания прыжки. Приседания с широким расставлением ног с прыжками вверх. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Горные альпинисты',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/MOUNTAIN CLIMBER.gif',
            exerciseText: 'Горные альпинисты',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Примите планку, подтягивайте колено к груди поочередно, поддерживая высокий темп. Укрепляйте ядро и ноги, улучшайте выносливость.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FMOUNTAIN%20CLIMBER.mp4?alt=media&token=102f5ae1-f21e-4869-aadb-4d529db4deaa',
            semanticLabel:
                'Упражнение Горные альпинисты. Подтягивание колена к груди в планке. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Звездный прыжок',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/Touch ground star jump.gif',
            exerciseText: 'Звездный прыжок',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Стартуйте в широкой постановке, выпрыгивайте вверх, руки и ноги расправлены. Приземляйтесь мягко. Эффективно для кардио и укрепления мышц.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FTouch%20ground%20star%20jump.mp4?alt=media&token=d2698a1f-d1a2-453c-adf4-92fb5e145cd4',
            semanticLabel:
                'Упражнение Звездный прыжок. Выпрыгивание вверх с расправленными руками и ногами. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Боксерские джебы',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/boxing jabs.gif',
            exerciseText: 'Боксерские джебы',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Стойте в боксерской позе, быстро выполняйте короткие удары левой и правой рукой вперед. Развивайте скорость, координацию и реакцию.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2Fboxing_jabs.mp4?alt=media&token=f010f66f-46b1-46c9-9e49-d3dd2de48c77',
            semanticLabel:
                'Упражнение Боксерские джебы. Быстрые короткие удары левой и правой рукой. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Высокие колени',
          child: const ExerciseWidget(
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
                'Упражнение Высокие колени. Бег на месте с поднятием колен выше. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Прыжки с выпадом',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/Lunge jumps.gif',
            exerciseText: 'Прыжки с выпадом',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Делайте шаг вперед, выпадая на одну ногу, затем прыгайте вверх и меняйте ноги в воздухе. Укрепляйте ноги и ягодицы. Повторяйте для эффективного тренировочного комплекса.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FYour%20body%2FLunge%20jumps.mp4?alt=media&token=47c7a295-96e5-47fc-a022-b33b184c12b1',
            semanticLabel:
                'Упражнение Прыжки с выпадом. Шаг вперед в выпад и прыжок с заменой ног. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Боковые выпады',
          child: const ExerciseWidget(
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
                'Упражнение Боковые выпады. Шаг вбок с согнутым коленом. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Упражнение Боковые подъемы бедер',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/your_body/On side hip raises.gif',
            exerciseText: 'Боковые подъемы бедер',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Лягте на бок, поднимайте верхнюю ногу вверх, затем опускайте. Укрепляйте боковые мышцы и формируйте талию. Повторяйте для лучших результатов.',
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
