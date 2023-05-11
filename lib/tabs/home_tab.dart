import 'package:flutter/material.dart';
import 'package:streaming/helpers/categorias.dart';
import 'package:streaming/styles/styles.dart';
import 'package:streaming/widgets/card_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Styles();
    final List<String> categoria = categorias;

    return ListView.builder(
      itemCount: categoria.length,
      itemBuilder: (_, index1) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              categoria.elementAt(index1),
              style: textStyle.style,
            ),
          ),
          SizedBox(
            width: size.width,
            height: 150,
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (_, index) => CardWidget(
                index: index,
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
