import 'package:flutter/material.dart';
import 'authentication.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              ListBody(
                children: [
                  ListTile(
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const AccountPage()),
                        ),
                      );
                    },
                  ),
                  const ListTile(),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: ((context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu),
              )),
        ),
        actions: <Widget>[
          IconButton(
            tooltip: 'Search',
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          MaterialButton(
            onPressed: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const Favorite()),
                    ),
                  );
                },
              );
            },
            child: const Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.red.shade700,
        title: const Text('Druk Pizza'),
      ),

      //body
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueAccent,
                ),
                child: const Text('Yellow'),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('images/download.jpg'),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const Text('Cheese Pizza')
                  ],
                ),
              ),
              Row(
                children: [
                  MaterialButton(
                    child: const Icon(Icons.login),
                    onPressed: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      //Nav
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        currentIndex: index,
        onTap: (i) {
          setState(() => index = i);
        },
        backgroundColor: Colors.red.shade700,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            activeIcon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Orders',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            activeIcon: Icon(Icons.account_circle),
            label: 'Account',
          ),*/
        ],
      ),
    );
  }
}

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Scrollbar(
            child: Column(
              children: const [Card(color: Colors.blue)],
            ),
          ),
        ),
      ),
    );
  }
}

//Favorite

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
    );
  }
}

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                color: Colors.blue,
                child: const SizedBox(
                  height: 250,
                  child: Text('Blue'),
                ),
              ),
              Container(
                child: const Center(
                  child: SizedBox(
                    height: 250,
                    child: Text('Green'),
                  ),
                ),
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
                child: const SizedBox(
                  height: 250,
                  child: Text('Blue'),
                ),
              ),
              Container(
                child: const SizedBox(
                  height: 250,
                  child: Text('Green'),
                ),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
