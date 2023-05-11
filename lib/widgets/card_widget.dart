import 'package:flutter/material.dart';
import 'package:streaming/styles/styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final borde = Styles();

    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 100,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: borde.borde,
        image: DecorationImage(
          image: NetworkImage(
            'https://picsum.photos/id/$index/150',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
