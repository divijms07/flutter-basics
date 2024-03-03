import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
Exp1 : First Flutter App
To design a basic layout of Flutter App using Scaffold widget (Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, App-Bar)
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Flutter App', style: TextStyle(
              fontSize: 20,
              color: Colors.white)),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello World!', style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrange)),
        ),
        floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                backgroundColor: Colors.blue,
                child: const Icon(Icons.add),
              );
            }
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}