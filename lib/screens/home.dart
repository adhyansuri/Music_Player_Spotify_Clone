import 'package:flutter/material.dart';
import 'package:spotify_clone/models/category.dart';
import 'package:spotify_clone/models/playlist.dart';
import 'package:spotify_clone/services/category_operations.dart';
import 'package:spotify_clone/services/playlist_operations.dart';

class Home extends StatelessWidget {
  Function _miniplayer;
  Home(this._miniplayer); 

//Creates the top appbar of the home page//
Widget CreateAppBar(String message) {
  return AppBar(
    centerTitle: false,
    title: Text(
      message,
      style: TextStyle(
          fontFamily: 'Karla',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.5),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    actions: [
      Padding(padding: EdgeInsets.only(right: 10), child: Icon(Icons.settings))
    ],
  );
}

//Creates the unplayable spotify raw templates//
Widget CreateCategory(Category category) {
  return Container(
      color: Color.fromARGB(155, 86, 88, 88),
      child: Row(
        children: [
          Image.network(
            category.imageurl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              category.name,
              style: TextStyle(color: Colors.white, fontFamily: 'Karla'),
            ),
          )
        ],
      ));
}

//Puts indivisual playlist category in a list//
List<Widget> CreateCategoriesList() {
  List<Category> categoryList = CategoryOperations.getCategories();
  List<Widget> categories = categoryList
      .map((Category category) => CreateCategory(category))
      .toList();
  return categories;
}

//Aligns and set the grid for group of playlists//
Widget CreateGrid() {
  return Container(
    padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
    height: 230,
    child: GridView.count(
      childAspectRatio: 3 / 1,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: CreateCategoriesList(),
      crossAxisCount: 2,
    ),
  );
}

//Template for playlists which will play music//
Widget CreatePlaylist(Playlist playlist) {
  return Padding(
    padding: EdgeInsets.only(right: 15, top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 150,
            width: 150,
            child: InkWell(
              onTap: (){
                _miniplayer(playlist, stop:true);
              },
                child: Image.network(playlist.imageurl, fit: BoxFit.cover))),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            playlist.name,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            playlist.desc,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    ),
  );
}

//First Array of music//
Widget CreatePlaylistArray(String Data) {
  List<Playlist> playlistarray = playlist_operations.getplaylist();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        Data,
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Karla',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5),
      ),
      Container(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CreatePlaylist(playlistarray[index]);
          },
          itemCount: playlistarray.length,
        ),
      ),
    ],
  );
}

//Second array of music//
Widget CreateMusicArray(String Data) {
  List<Playlist> playlistarray = playlist_operations.getmusic();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        Data,
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Karla',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5),
      ),
      Container(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CreatePlaylist(playlistarray[index]);
          },
          itemCount: playlistarray.length,
        ),
      ),
    ],
  );
}

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            CreateAppBar('Good Morning'),
            CreateGrid(),
            CreatePlaylistArray('Music For You'),
            CreateMusicArray('Popular Music')
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 216, 213, 255),
                Colors.black,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.3]),
        ),
      )),
    );
  }
}
