import 'package:flutter/material.dart';
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
                : const Text(
                    'Ягодици и ноги',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/training_image/workout_image/trim butt and legs/trim butt and legs.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TrimButtAndLegsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
