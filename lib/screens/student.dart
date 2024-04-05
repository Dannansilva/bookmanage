// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase/component/My_textfeild.dart';
import 'package:firebase/screens/Showbooks.dart';
import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController bookauth = TextEditingController();
    TextEditingController indexController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              MyTextField(
                controller: name,
                hintText: "Book Name",
                obscureText: false,
              ),
              SizedBox(
                height: 25,
              ),
              MyTextField(
                hintText: "author namee",
                obscureText: false,
                controller: bookauth,
              ),
              SizedBox(
                height: 25,
              ),
              MyTextField(
                hintText: "index",
                obscureText: false,
                controller: indexController,
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailsPage(
                        bookName: name.text,
                        authorName: bookauth.text,
                        index: indexController.text,
                      ),
                    ),
                  );
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
      //navbar
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          if (index == 0) {
            // Navigate to BookDetailsPage when 'Home' is selected
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailsPage(
                  bookName: name.text,
                  authorName: bookauth.text,
                  index: indexController.text,
                ),
              ),
            );
          } else {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
      ),
    );
  }
}
