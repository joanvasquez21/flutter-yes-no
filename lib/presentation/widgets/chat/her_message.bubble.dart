import 'package:flutter/material.dart';
class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
          color: colors.secondary,
          borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('hi joan', style: TextStyle(color: Colors.white)),
          ),
        ),

        const SizedBox(height: 5)

        //Img

      ],
    );
    }
}