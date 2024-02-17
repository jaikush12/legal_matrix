import 'package:flutter/material.dart';
import 'package:legal_matrix/prisoner/articles.dart';
import 'package:legal_matrix/prisoner/chats.dart';
import 'package:legal_matrix/prisoner/dashboard.dart';
import 'package:legal_matrix/prisoner/directory.dart';
import 'package:legal_matrix/prisoner/rehabilitation.dart';

class Prisoner extends StatefulWidget {
  @override
  _PrisonerState createState() => _PrisonerState();
}

class _PrisonerState extends State<Prisoner> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Prisoner"),
      ),
      body: _getBody(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            backgroundColor: Colors.black,
            label: 'Rehabilitation Program',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            backgroundColor: Colors.black,
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            backgroundColor: Colors.black,
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            backgroundColor: Colors.black,
            label: 'Legal Directory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            backgroundColor: Colors.black,
            label: 'Legal Articles',
          ),
        ],
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return const Rehabilitation();
      case 1:
        return const MyChats();
      case 2:
        return const PrisonerProfile();
      case 3:
        return const directory();
      case 4:
        return const articles();
      default:
        return Container(); // Return an empty container for unknown index
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class RehabilitationProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Rehabilitation Program'),
    );
  }
}

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Chats'),
    );
  }
}

class LegalDirectory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Legal Directory'),
    );
  }
}

class LegalArticles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Legal Articles'),
    );
  }
}
