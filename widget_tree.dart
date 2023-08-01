import 'package:flutter/material.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentPage = 0;

  List<Widget> pages = [const Text('Hello'), const Text('Hey There!')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Hey'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),

      ],
      selectedIndex: currentPage,
      onDestinationSelected: (int value) {
        setState(() {
          
        currentPage = value;
        });

        
      },
      ),
      

    );
  }
}