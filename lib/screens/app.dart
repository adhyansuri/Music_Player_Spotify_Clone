import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/models/playlist.dart';
import 'package:spotify_clone/screens/home.dart';
import 'package:spotify_clone/screens/library.dart';
import 'package:spotify_clone/screens/search.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
   _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer = new AudioPlayer();
  var Tabs = [];
  int currentTabIndex = 0;
  bool isPlaying = false;
  
Playlist? playlist;

initState(){
  super.initState();
    Tabs = [Home(miniplayer), Search(), Library()];
}

//miniplayer which communicates with playlist class to get details and update//
  Widget miniplayer(Playlist? playlist, {bool stop = false}) {
    this.playlist = playlist; 
    if(playlist == null)
    {
      return SizedBox();//if not playing//
    }
    if(stop)
    {
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState(() {});
      Size dvsize = MediaQuery.of(context).size;
      return AnimatedContainer(
          duration: const Duration(microseconds: 500),
         color: Color.fromARGB(224, 50, 50, 50),
         width: dvsize.width,
         height: 50,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Image.network(
                 playlist.imageurl,
                 fit: BoxFit.cover),
             Text(
                playlist.name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                  onPressed: () async{
                    isPlaying = !isPlaying;
                    if(isPlaying)
                    {
                       await _audioPlayer.play(UrlSource(playlist.audioURL)); 
                    }
                    else{
                      await _audioPlayer.pause();
                    }
                    setState(() {});
                  },
                 icon: isPlaying? Icon(
                   Icons.pause_sharp,
                   color: Colors.white,
                ):Icon(
                   Icons.play_arrow_sharp,
                   color: Colors.white,
                ))
            ],  
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniplayer(playlist),
          BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (currentIndex) {
              print("$currentTabIndex");
              currentTabIndex = currentIndex;
              setState(() {});
            },
            selectedLabelStyle: TextStyle(color: Colors.white),
            selectedItemColor: Colors.white,
            backgroundColor: Color.fromARGB(224, 45, 45, 45),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, color: Colors.white),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined, color: Colors.white),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books_outlined, color: Colors.white),
                  label: 'Library ')
            ],
          ),
        ],
      ),
    );
  }
}
