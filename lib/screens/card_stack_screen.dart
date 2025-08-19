import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';
import '../data/mock_data.dart';
import '../widgets/swipe_card.dart';

class CardStackScreen extends StatefulWidget {
  const CardStackScreen({super.key});

  @override
  State<CardStackScreen> createState() => _CardStackScreenState();
}

class _CardStackScreenState extends State<CardStackScreen> {
  final SwipableStackController _controller = SwipableStackController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SwipableStack(
          controller: _controller,
          itemCount: mockData.length,
          builder: (context, properties) {
            final item = mockData[properties.index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 120,
              ),
              child: SwipeCard(item: item),
            );
          },
        ),
      ),
    );
  }
}
