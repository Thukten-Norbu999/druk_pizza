import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: ,
        shadowColor: Colors.red.shade400,
        actions: <Widget>[
          IconButton(
            tooltip: 'Look at the menu',
            icon: const Icon(Icons.menu_rounded),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.red.shade700,
        title: const Text('Druk Pizza'),
      ),

      //body
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blueAccent,
          ),
          child: Column(
            children: const [],
          ),
        ),
      ),

      //Nav
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red.shade700,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Orders',
          ),
        ],
      ),
    );
  }
}
