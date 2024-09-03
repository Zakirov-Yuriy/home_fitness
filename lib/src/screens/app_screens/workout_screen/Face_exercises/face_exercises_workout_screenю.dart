import 'package:flutter/material.dart';
import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Six/Face Exercises/face_exercises_widget.dart';

class FaceExercisesWorkoutScreen extends StatefulWidget {
  const FaceExercisesWorkoutScreen({super.key});

  @override
  FaceExercisesWorkoutScreenState createState() =>
      FaceExercisesWorkoutScreenState();
}

class FaceExercisesWorkoutScreenState
    extends State<FaceExercisesWorkoutScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isImageVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _isImageVisible = _scrollController.offset <= 200;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: _isImageVisible
                ? null
                : const Text(
                    'Face Exercises',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/training_image/workout_image/Face exercises/Face Exercises.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FaceExercisesWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
