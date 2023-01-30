import 'package:flutter/material.dart';
import '../Composant/ChangePageBat.dart';
import 'PageDonnees.dart';

class NavPageBaterie extends StatefulWidget {
  NavPageBaterie({super.key});

  @override
  State<NavPageBaterie> createState() => _NavPageBaterieState();
}

class _NavPageBaterieState extends State<NavPageBaterie> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Menu'), backgroundColor: Colors.grey),
        body: new Stack(
          children: <Widget>[
            // ChangePageBat(WidgetPage(), 0, index),
            ChangePageBat(NavDonnees(), 1, index),
            // ChangePageBat(WidgetPage(), 2, index),
          ],
        ), //drawer: Widget();
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 180, 180, 180),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.lock),
                  label: 'Protections',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Panneau de configuration',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  label: 'Données',
                ),
              ],
              currentIndex: index,
              selectedItemColor: Colors.white,
              backgroundColor: Colors.transparent,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              }),
        ),
      ),
    );
  }
}
