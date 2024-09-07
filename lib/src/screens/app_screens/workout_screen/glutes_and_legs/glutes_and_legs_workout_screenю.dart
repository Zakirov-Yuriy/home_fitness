import 'package:flutter/material.dart';
import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Two/glutes_and_legs/glutes_and_legs_widget.dart';

class GlutesAndLegsWorkoutScreen extends StatefulWidget {
  const GlutesAndLegsWorkoutScreen({super.key});

  @override
  GlutesAndLegsWorkoutScreenState createState() =>
      GlutesAndLegsWorkoutScreenState();
}

class GlutesAndLegsWorkoutScreenState
    extends State<GlutesAndLegsWorkoutScreen> {
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
                : Semantics(
                    label: 'Заголовок страницы: Ноги и бедра',
                    child: const Text(
                      'Ноги и бедра',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Semantics(
                label: 'Изображение для тренировки ног и бедер',
                child: Image.asset(
                  'assets/images/training_image/workout_image/glutes_and_legs/glutes and legs.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Semantics(
              label: 'Упражнения для ног и бедер',
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GlutesAndLegsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
