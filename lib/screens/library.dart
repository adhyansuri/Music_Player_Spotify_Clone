import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}
//Your Library Page//
class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: Colors.black,
            padding: EdgeInsets.all(10),
            child: Row(children: [
              Text('Your Library ',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              Padding(padding: EdgeInsets.only(left:162)),
              Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              Padding(padding: EdgeInsets.only(left:10)),
              Icon(Icons.add, color: Colors.white),
            ])));
  }
}
