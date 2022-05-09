import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'authentication.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final pages = [const HomePage(), const Category(), const Orders()];
  int index = 0;

  final titleStyle = GoogleFonts.ubuntuMono(
      fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 45),
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                ListBody(
                  children: [
                    ListTile(
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      selectedTileColor: Colors.white30,
                      title: const Text('Settings'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Login()),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Login'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Login()),
                          ),
                        );
                        const Icon(
                          Icons.login,
                          color: Colors.black,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      //AppBar
      appBar: AppBar(
        leading: Builder(
          builder: ((context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu),
              )),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /*IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),*/
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
          ),
        ],
        backgroundColor: Colors.red.shade400,
        title: Text('Druk Pizza🍕', style: titleStyle),
        centerTitle: true,
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
                    color: Colors.red.shade400,
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
                                builder: (context) => const Category()),
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
        selectedItemColor: Colors.white,
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
              Icons.category_outlined,
            ),
            activeIcon: Icon(Icons.category),
            label: 'Category',
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
  final titleStyle = GoogleFonts.ubuntuMono(
      fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        title: Text(
          'Favorites',
          style: titleStyle,
        ),
        centerTitle: true,
      ),
    );
  }
}

//Category

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final titleStyle = GoogleFonts.ubuntuMono(
      fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        title: Text(
          'Category',
          style: titleStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search',
                    suffixIcon: const Icon(
                      Icons.search_rounded,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.amber,
                        child: const SizedBox(
                          child: Card(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
