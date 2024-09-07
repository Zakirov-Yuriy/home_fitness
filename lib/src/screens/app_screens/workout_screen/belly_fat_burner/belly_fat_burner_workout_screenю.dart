import 'package:flutter/material.dart';

import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Three/Belly_fat_burner/belly_fat_burner_widget.dart';

class BellyFatBurnerWorkoutScreen extends StatefulWidget {
  const BellyFatBurnerWorkoutScreen({super.key});

  @override
  BellyFatBurnerWorkoutScreenState createState() =>
      BellyFatBurnerWorkoutScreenState();
}

class BellyFatBurnerWorkoutScreenState
    extends State<BellyFatBurnerWorkoutScreen> {
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
                    label: 'Заголовок страницы: Убираем жир с живота',
                    child: const Text(
                      'Убираем жир с живота',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Semantics(
                label: 'Изображение для тренировки по снижению жира на животе',
                child: Image.asset(
                  'assets/images/training_image/workout_image/belly_fat_burner/Belly fat burner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Semantics(
              label: 'Упражнения для снижения жира на животе',
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BellyFatBurnerWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
