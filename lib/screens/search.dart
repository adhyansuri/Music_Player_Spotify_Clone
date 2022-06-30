import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}
//Search Screen//
Widget CreateAppBar()
{
  return AppBar(
    backgroundColor: Color.fromARGB(255, 39, 39, 39),
    elevation: 0.0,
    actions: [
      IconButton(onPressed: (){}, padding: EdgeInsets.only(left: 10, right: 317) ,icon: Icon(Icons.arrow_back_ios_new_outlined)),
      Padding(padding: EdgeInsets.only(right: 10), child: Icon(Icons.camera_alt_outlined))
    ]
  );
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            CreateAppBar(),
            Container(
              color: Colors.black,
          ),
          ],
        ),
    );
  }
}
