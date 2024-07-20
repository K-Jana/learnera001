import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learnera/model/tutor_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //List of tutors, temporary data set to display in UI
  static List<Tutor> tutors = [
    Tutor(name: 'Adrian Y.', rating: 5, reviews: 12, language: 'English'),
    Tutor(name: 'Sai M.', rating: 4.9, reviews: 52, language: 'English'),
    Tutor(name: 'Nayana K.', rating: 4.6, reviews: 12, language: 'English'),
    Tutor(name: 'Sergei Ia.', rating: 4.8, reviews: 33, language: 'English'),
    Tutor(name: 'Marina S.', rating: 4.9, reviews: 70, language: 'English'),
    Tutor(name: 'Georgina G.', rating: 5, reviews: 7, language: 'English'),
    Tutor(name: 'Olha B.', rating: 4.9, reviews: 37, language: 'English'),
    Tutor(name: 'Anna I.', rating: 5, reviews: 10, language: 'English'),
    Tutor(name: 'João M.', rating: 5, reviews: 7, language: 'English'),
    Tutor(name: 'Katerina D.', rating: 4.9, reviews: 12, language: 'English'),
    Tutor(name: 'Robert M.', rating: 5, reviews: 16, language: 'English'),
    Tutor(name: 'Zoriana D.', rating: 4.8, reviews: 5, language: 'English'),
    Tutor(name: 'Snizhana K.', rating: 4.8, reviews: 33, language: 'English'),
    Tutor(name: 'Inna G.', rating: 4.9, reviews: 23, language: 'English'),
    Tutor(name: 'nick t.', rating: 4.5, reviews: 24, language: 'English'),
    Tutor(name: 'Camilo U.', rating: 4.9, reviews: 179, language: 'English'),
  ];
//creating a list that we're going to display and filter
  List<Tutor> display_list = List.from(tutors);

  //Void updateList(String value) {
  //  //this is the function that will filter our list
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 157, 161, 160),
      appBar: AppBar(
        backgroundColor: Color(0x11212d),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find your tutor",
              style: TextStyle(
                  color: Color(0x253745),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Color(0x06141b)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0x9ba8ab),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg: Maths,Online",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Color(0x06141b),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    display_list[index].name!,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${display_list[index].language!}',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
