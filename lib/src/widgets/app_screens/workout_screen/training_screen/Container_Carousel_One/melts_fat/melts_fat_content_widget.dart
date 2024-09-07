import 'package:flutter/material.dart';

import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class MeltsFatContent extends StatelessWidget {
  const MeltsFatContent({super.key});

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
          label: 'Ряды ренегатов',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/Renegade rows.gif',
            exerciseText: 'Ряды ренегатов',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Возьмите гантели, станьте в позу отжимания. Поднимите поочередно гантели к плечу, сохраняя равновесие. Укрепляйте ядро и руки. Повторяйте для силы и стабильности.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2FRenegade%20rows.mp4?alt=media&token=315d4dae-6ed5-4b85-8e40-8fe29ef4d803',
            semanticLabel:
                'Упражнение Ряды ренегатов. Подъем гантелей к плечу в позе отжимания для укрепления ядра и рук. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Военный жим сидя',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/Seated military press.gif',
            exerciseText: 'Военный жим сидя',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Садитесь на скамью с поддержкой для спины, возьмите гантели. Поднимайте их над головой, затем опускайте до уровня плеч. Укрепляйте плечи и трицепсы. Повторяйте для развития силы.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2FSeated%20military%20press.mp4?alt=media&token=07fdab1e-918c-4646-99d2-8f5412d7f24a',
            semanticLabel:
                'Упражнение Военный жим сидя. Подъем гантелей над головой, сидя на скамье. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Отжимание',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/push aps.gif',
            exerciseText: 'Отжимание',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Лягте лицом вниз, опираясь на ладони и носки. Сгибайте руки, опуская тело, затем отжимайтесь, выпрямляя руки. Укрепляйте грудь, плечи и руки. Повторяйте для силы и выносливости.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2Fpush%20aps.mp4?alt=media&token=bef0f54f-d8e2-4c84-9bc1-d3fc94b00d1f',
            semanticLabel:
                'Упражнение Отжимание. Опускание тела, согнув руки, и отжимание для укрепления груди и рук. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Подъем лат на одной руке',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/Bent over one arm lat raise.gif',
            exerciseText: 'Подъем лат на одной руке',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Возьмите гантель в руку, наклонитесь вперед. Поднимите гантель вверх, согнув руку в локте. Укрепляйте верхнюю часть спины и плечи. Повторяйте на обеих сторонах.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2FBent%20over%20one%20arm%20lat%20raise.mp4?alt=media&token=65c199f9-81b6-4176-b164-394ef18f2ad3',
            semanticLabel:
                'Упражнение Подъем лат на одной руке. Наклон вперед с подъемом гантели вверх. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Вращения дельт стоя',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/Standing real delt rotations.gif',
            exerciseText: 'Вращения дельт стоя',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Возьмите гантель в каждую руку, станьте прямо. Поднимайте руки в стороны до уровня плеч, затем вращайте их вперед и назад. Укрепляйте плечи и дельты. Повторяйте для силы и стабильности.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2FStanding%20real%20delt%20rotations.mp4?alt=media&token=897f8926-76ad-4009-b56f-e8fe6d0c482b',
            semanticLabel:
                'Упражнение Вращения дельт стоя. Подъем рук в стороны с вращением вперед и назад. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Передний подъем',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/Front raise .gif',
            exerciseText: 'Передний подъем',
            setText: 'Длительность',
            durationText: '3 повторение 60s',
            subtitleText:
                'Возьмите гантель в каждую руку, станьте прямо. Поднимайте руки вперед от корпуса до уровня плеч, затем опускайте. Укрепляйте плечи и передние дельты. Повторяйте для силы и тонуса.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2FFront%20raise%20.mp4?alt=media&token=20704922-912d-4c66-a528-c7075572c1bb',
            semanticLabel:
                'Упражнение Передний подъем. Подъем рук вперед от корпуса до уровня плеч. Длительность: 3 повторения по 60 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Пловцы',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/swimmers.gif',
            exerciseText: 'Пловцы',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Пловцы - это упражнение, при котором человек находится в положении лежа на животе в воде, руки вытянуты вперед, а ноги плывут на поверхности воды. Плавание - это отличное кардиоупражнение, которое укрепляет мышцы спины, плеч и рук, а также улучшает выносливость и координацию.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2Fswimmers.mp4?alt=media&token=e9e218bc-0928-4a85-8f64-d20bcaa4af48',
            semanticLabel:
                'Упражнение Пловцы. Лежа на животе, руки вытянуты вперед, ноги плавают. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        const CustomDivider(),
        Semantics(
          label: 'Наклонный ряд',
          child: const ExerciseWidget(
            imagePath:
                'assets/images/training_image/workout_image/melts_fat/Bent over row.gif',
            exerciseText: 'Наклонный ряд',
            setText: 'Длительность',
            durationText: '3 повторение 30s',
            subtitleText:
                'Наклонный ряд: станьте навскидку, наклоните верхнюю часть тела вперед под углом к полу. Возьмите гантель в каждую руку, опустите их вниз. Тяните гантели к животу, сгибая локти. Укрепляйте спину и мышцы верхней части спины. Повторяйте для силы и тонуса.',
            videoUrl:
                'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2FBent%20over%20row.mp4?alt=media&token=10ec8e77-7b63-4796-bb3e-a0dcdf3364dc',
            semanticLabel:
                'Упражнение Наклонный ряд. Наклон вперед с поднятием гантелей к животу. Длительность: 3 повторения по 30 секунд.',
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
