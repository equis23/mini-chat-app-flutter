import 'package:flutter/material.dart';

class BubbleMessage extends StatelessWidget {
  final String sentence;

  const BubbleMessage({
    Key? key,
    required this.sentence,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Color(0xFFC9C9C9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Text(sentence),
        )
      ],
    );
  }
}
