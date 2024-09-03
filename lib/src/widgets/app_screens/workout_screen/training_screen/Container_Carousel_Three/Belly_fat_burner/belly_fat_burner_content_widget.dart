import 'package:flutter/material.dart';
import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class BellyFatBurnerThighsContent extends StatelessWidget {
  const BellyFatBurnerThighsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/belly_fat_burner/Hip thruster.gif',
          exerciseText: 'Подтягивание бедра',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Подтягивание бедра: сядьте на тренажер для подтягивания бедра, настройте вес и выберите желаемый уровень нагрузки. Разместите подкладку на нужном уровне, чтобы верхняя часть бедра была определенно поддержана. Согните бедро и поднимите его, затем медленно опустите. Повторите для другой ноги.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2FHip%20thruster.mp4?alt=media&token=3f8fccac-4d82-4ba4-bc8e-9441d0bc08c6',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/belly_fat_burner/Clapping push ups.gif',
          exerciseText: 'Отжимания с хлопками',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Отжимания с хлопками: Встаньте в позу отжимания на полу, руки на ширине плеч. Опустите тело вниз, затем с силой оттолкнитесь от пола и сделайте хлопок руками под собой, вернитесь в исходное положение. Это упражнение развивает силу в верхней части тела и улучшает выносливость.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2FClapping%20push%20ups.mp4?alt=media&token=a293b30c-d382-4e23-b30e-9d4669583706',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/belly_fat_burner/Gar hammer raise.gif',
          exerciseText: 'Подъем Гархаммер',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Подъем Гархаммер: Лягте на пол на животе, руки вытянуты вдоль тела. Согните колени и поднимите стопы к бедрам. Напрягите мышцы ягодиц и нижней части спины, затем поднимите верхнюю часть тела, пытаясь дотянуться плечами до ягодиц. Замедленно опустите верхнюю часть тела обратно на пол. Повторите для укрепления и развития мышц ягодиц и спины.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2FGar%20hammer%20raise.mp4?alt=media&token=99e5f34e-7d8e-4059-963e-9fa659762872',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/glutes_and_legs/Glute bridge.gif',
          exerciseText: 'Ягодичный мостик',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Ягодичный мостик: лягте на спину, согните ноги и поставьте стопы на полу. Медленно поднимите бедра вверх, сжимая ягодицы. Задержитесь на верхней точке, затем медленно опуститесь обратно. Укрепляйте ягодицы и спину. Повторяйте для силы и тонуса.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fglutes%20and%20legs%2FGlute%20bridge.mp4?alt=media&token=80ee43cd-dfc8-4b8b-914e-843fb5d68de1',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/belly_fat_burner/crunch.gif',
          exerciseText: 'Crunch',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Crunch - упражнение для пресса, лежа на спине. Лягте с согнутыми в коленях ногами и руками за головой. Сделайте упор на живот, поднимите плечи от пола, не тяните шею. Поднимитесь до угла 30°, задержитесь и медленно опуститесь. Повторите для силы и контроля.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2Fcrunch.mp4?alt=media&token=f01cdf53-f3ee-4698-9098-b19802063353',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/melts_fat/swimmers.gif',
          exerciseText: 'Пловцы',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Пловцы - это упражнение, при котором человек находится в положении лежа на животе в воде, руки вытянуты вперед, а ноги плывут на поверхности воды. Плавание - это отличное кардиоупражнение, которое укрепляет мышцы спины, плеч и рук, а также улучшает выносливость и координацию.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fmelts_fat%2Fswimmers.mp4?alt=media&token=e9e218bc-0928-4a85-8f64-d20bcaa4af48',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/belly_fat_burner/Jackknife from lying flat.gif',
          exerciseText: 'Нож из положения лежа',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              '"Нож из положения лежа": Начните с положения лежа на спине с вытянутыми руками и ногами. Поднимите одновременно верхнюю часть тела и ноги с пола, пытаясь их соприкоснуться, образуя изогнутую форму тела, напоминающую нож. Задержитесь в этом положении на мгновение, затем медленно вернитесь в исходное положение. Повторите для укрепления кора и пресса.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2FJackknife%20from%20lying%20flat.mp4?alt=media&token=66b88472-d9e3-4f94-9aa0-7a7d1d043e99',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/belly_fat_burner/Glute bridge to leg raise.gif',
          exerciseText: 'Ягодичный мостик и \nподъем ног',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Ягодичный мостик и подъем ног: Лягте на спину, согните ноги. Поднимите бедра, напрягая ягодицы. Поднимите ногу вверх, затем медленно опустите. Повторите с другой ногой.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2Fbelly%20fat%20burner%2FGlute%20bridge%20to%20leg%20raise.mp4?alt=media&token=d8010723-953f-4616-943e-a050d45e1c30',
        ),
        CustomDivider(),
      ],
    );
  }
}
