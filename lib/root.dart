import 'package:flutter/material.dart';

import 'library.dart';

class Root extends StatefulWidget {
  const Root({super.key, required this.nama});
  final String nama;

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [LibraryPage(nama: widget.nama)];
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
