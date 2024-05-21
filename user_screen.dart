import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int _selectedIndex = 2; // Kullanıcı ekranı için index 2 olarak başlatılır

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        Navigator.pushReplacementNamed(context, '/login');
      } else if (index == 1) {
        Navigator.pushReplacementNamed(context, '/location');
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kullanıcı'),
      ),
      body: Center(
        child: Text(
          'Kullanıcı Ekranı',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Konum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Kullanıcı',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
