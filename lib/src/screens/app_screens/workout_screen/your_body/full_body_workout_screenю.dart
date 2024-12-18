import 'package:flutter/material.dart';
import 'package:home_fitness/generated/l10n.dart';
import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_One/your_body/your_body_widget.dart';

class FullBodyWorkoutScreen extends StatefulWidget {
  const FullBodyWorkoutScreen({super.key});

  @override
  FullBodyWorkoutScreenState createState() => FullBodyWorkoutScreenState();
}

class FullBodyWorkoutScreenState extends State<FullBodyWorkoutScreen> {
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
                    label: 'Заголовок страницы: Всё тело',
                    child: Text(
                      S.of(context).Whole_body,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Semantics(
                label: 'Изображение для тренировки всего тела',
                child: Image.asset(
                  'assets/images/training_image/workout_image/whole_body.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Semantics(
              label: 'Упражнения для всего тела',
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  YourBodyWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
