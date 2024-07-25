import 'package:flutter/material.dart';
import 'package:learnera/model/tutor_model.dart'; // Assuming this is your tutor model

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //List of tutors, temporary data set to display in UI
  static List<Tutor> tutors = [
    Tutor(name: 'Adrian Y.', rating: 5, reviews: 12, language: 'English'),
    // ... other tutor data (same as before)
  ];
  //creating a list that we're going to display and filter
  List<Tutor> display_list = List.from(tutors);

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
                fontWeight: FontWeight.bold,
              ),
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
