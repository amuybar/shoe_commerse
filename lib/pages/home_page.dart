import 'package:flutter/material.dart';
import 'package:myapp/pages/screens/cartscreeen.dart';
import 'package:myapp/pages/screens/homescreen.dart';
import 'package:myapp/pages/screens/profilescreen.dart';
import 'package:myapp/pages/screens/searchscreen.dart';
import 'package:myapp/widgets/drawer.dart';

// Define the HomePage class
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int index = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title:  Text('ShoeCommerse',style:TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold,
            color: Colors.black.withBlue(55)
          )),
          elevation: 3,
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          backgroundColor: Colors.grey,
          iconSize: 24, 
          selectedFontSize: 18,
          unselectedFontSize: 17,
          selectedLabelStyle:const TextStyle(
            color: Colors.orange, 
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          unselectedLabelStyle:const TextStyle(
            color: Colors.black, 
            fontSize: 16,
            fontWeight: FontWeight.normal
          ),
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),

        // Create a drawer
        drawer: const CustomDrawer(),
        body: pages[index]);
  }
}

const pages = <Widget>[
  HomeScreen(),
  SearchScreen(),
  CartScreen(),
  ProfileScreen(),
];
