import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Two/Legs_and_thighs/legs_and_thighs_widget.dart';

class LegsAndThighsWorkoutScreen extends StatefulWidget {
  const LegsAndThighsWorkoutScreen({super.key});

  @override
  LegsAndThighsWorkoutScreenState createState() =>
      LegsAndThighsWorkoutScreenState();
}

class LegsAndThighsWorkoutScreenState
    extends State<LegsAndThighsWorkoutScreen> {
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
                    child: Text(
                      S.of(context).Legs_and_Hips,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Semantics(
                label: 'Изображение для тренировки ног и бедер',
                child: Image.asset(
                  'assets/images/training_image/workout_image/legs_and_thighs/Legs and thighs.jpg',
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
                  LegsAndThighsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
