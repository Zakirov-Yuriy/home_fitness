import 'package:flutter/material.dart';
import '../../../../../../screens/app_screens/workout_screen/Face_exercises/face_exercises_workout_screenю.dart'; // Corrected import path

class ContainerCarouselSix extends StatelessWidget {
  final List<String> images = [
    'assets/images/training_image/workout_image/Face exercises/Face Exercises.png',
  ];

  final List<String> titles = [
    'Программа 16x21',
  ];

  final List<String> subtitles = [
    'Face \nExercises',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: images.length, // Use the length of the images list
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 1 ? 0 : 0,
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titles[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        subtitles[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FaceExercisesWorkoutScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromRGBO(255, 51, 119, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize: const Size(150, 35),
                        ),
                        child: const Text(
                          'Начать',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        controller: PageController(viewportFraction: 0.88),
      ),
    );
  }
}
