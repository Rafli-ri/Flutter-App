import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: const Color(0xFFFAFEFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notification_add),
                    ),
                  ],
                ),
                const SizedBox(height: 37),
                const Text.rich(
                  TextSpan(
                    text: "Welcome,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        color: Colors.lightBlueAccent),
                  ),
                ),
                const SizedBox(
                  height: 1.0,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: const Text.rich(
                    TextSpan(
                      text: 'Rafli Rifaldi',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search, size: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search',
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Favorite Place',
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 14)),
                const SizedBox(height: 10),
                SizedBox(
                  height: 300,
                  child: GridView.count(
                    padding: const EdgeInsets.all(5),
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 7,
                    children: [
                      for (var item in items)
                        StreamBuilder<Object>(
                            stream: null,
                            builder: (context, snapshot) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/$item.jpg',
                                ),
                              );
                            })
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[200],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

setState(Null Function() param0) {}

final items = ['bosscha', 'farm-house', 'jalan-asia-afrika', 'taman-film'];
