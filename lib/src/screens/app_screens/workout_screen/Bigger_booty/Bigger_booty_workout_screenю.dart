import 'package:flutter/material.dart';
import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Four/Bigger_booty/Bigger_booty_widget.dart';

class BiggerBootyWorkoutScreen extends StatefulWidget {
  const BiggerBootyWorkoutScreen({super.key});

  @override
  BiggerBootyWorkoutScreenState createState() =>
      BiggerBootyWorkoutScreenState();
}

class BiggerBootyWorkoutScreenState extends State<BiggerBootyWorkoutScreen> {
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
                    'Большая попка',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/training_image/workout_image/Bigger booty/Bigger booty.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BiggerBootyWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
