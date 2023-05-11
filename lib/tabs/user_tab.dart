import 'package:flutter/material.dart';
import 'package:streaming/helpers/usuario.dart';
import 'package:streaming/styles/styles.dart';

class UserTab extends StatelessWidget {
  const UserTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Map<IconData, String> usuario = usuarioInfo;
    final style = Styles();

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 350,
            child: ListView.separated(
              itemCount: usuario.length,
              itemBuilder: (_, index) => ListTile(
                minVerticalPadding: 10,
                leading: Icon(
                  usuario.keys.elementAt(index),
                  color: Colors.white,
                ),
                title: Text(
                  usuario.values.elementAt(index),
                  style: style.styleText,
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
              separatorBuilder: (_, index) => const Divider(
                height: 1,
                indent: 30,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: size.width,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: style.borde,
            ),
            clipBehavior: Clip.hardEdge,
            child: MaterialButton(
              color: Colors.red.shade900,
              minWidth: size.width,
              height: 50,
              onPressed: () {},
              child: Text(
                'Cerrar sesión',
                style: style.styleText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
