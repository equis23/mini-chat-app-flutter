import 'package:flutter/material.dart';
import 'package:mini_chat/config/themes/app_theme.dart';

class OtherBubbleMessage extends StatelessWidget {
  final String message;
  final bool image;

  const OtherBubbleMessage({
    Key? key,
    required this.message,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        (image) ? const _ImageMessage() : const SizedBox()
      ],
    );
  }
}

class _ImageMessage extends StatelessWidget {
  const _ImageMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Image.network(
          'https://yesno.wtf/assets/no/20-56c4b19517aa69c8f7081939198341a4.gif',
          width: size.width * 0.75,
          height: 150,
          fit: BoxFit.fitWidth,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Theme.of(context).colorScheme.secondary,
              width: size.width * 0.75,
              height: 150,
              child: const Center(
                child: Text(
                  'Tio Obama is sending an image',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
