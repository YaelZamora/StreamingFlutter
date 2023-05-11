import 'package:flutter/material.dart';
import 'package:streaming/helpers/categorias.dart';
import 'package:streaming/styles/styles.dart';
import 'package:streaming/tabs/tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> tab = [
    const HomeTab(),
    const UserTab(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> categoria = categorias;
    final style = Styles();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(66, 66, 66, 0.8),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
        child: ListView.builder(
          itemCount: categoria.length,
          itemBuilder: (_, index) => Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              style: ButtonStyle(
                surfaceTintColor: MaterialStateProperty.all(
                  Colors.red,
                ),
              ),
              onPressed: () {},
              child: Text(
                categoria.elementAt(index),
                style: style.styleDrawer,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Streaming',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cast),
            color: Colors.white,
          ),
        ],
      ),
      body: tab[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
