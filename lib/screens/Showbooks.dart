// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  final String bookName;
  final String authorName;
  final String index;

  const BookDetailsPage({
    required this.bookName,
    required this.authorName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: ListTile(
            title: Text('Book Name: $bookName'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Author Name: $authorName'),
                Text('Index: $index'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'add book',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Handle navigation here if needed
        },
      ),
    );
  }
}
