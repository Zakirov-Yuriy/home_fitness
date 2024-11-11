import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Four/trim_butt_and_legs/trim_butt_and_legs_widget.dart';

class TrimButtAndLegsWorkoutScreen extends StatefulWidget {
  const TrimButtAndLegsWorkoutScreen({super.key});

  @override
  TrimButtAndLegsWorkoutScreenState createState() =>
      TrimButtAndLegsWorkoutScreenState();
}

class TrimButtAndLegsWorkoutScreenState
    extends State<TrimButtAndLegsWorkoutScreen> {
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
                    label: 'Заголовок страницы: Ягодицы и ноги',
                    child: Text(
                      S.of(context).Buttocks_and_legs2,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Semantics(
                label: 'Изображение для тренировки ягодиц и ног',
                child: Image.asset(
                  'assets/images/training_image/workout_image/trim butt and legs/trim butt and legs.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Semantics(
              label: 'Упражнения для ягодиц и ног',
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TrimButtAndLegsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
