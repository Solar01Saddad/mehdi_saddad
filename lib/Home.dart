import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final longText = "Messi";
    final imageUrl = 'https://prod-media.beinsports.com/image/1696586432231_38535054-49bd-468e-9641-57089244d971.jpg'; // Votre URL d'image

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IFIAG'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon : const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.orange,
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 30),
            Text(longText, textAlign: TextAlign.center,),
            SizedBox(height: 30),
            Image(image: NetworkImage(imageUrl)),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text("hhhhhh"),
              onPressed: () =>{
                Navigator.pushNamed(context, '/Account')
              },
            ),
          ],  
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.orange,
          selectedIndex: 1,
          height: 60,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.category_outlined),
              selectedIcon: Icon(Icons.category),
              label: 'Category',
            ),
            NavigationDestination(
              icon: Icon(Icons.history_outlined),
              selectedIcon: Icon(Icons.history),
              label: 'History',
            ),
          ],
        ),
      ),
    );
  }
}
