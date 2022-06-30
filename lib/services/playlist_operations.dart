import 'package:spotify_clone/models/playlist.dart';

class playlist_operations{
  playlist_operations_(){}
  static List<Playlist> getplaylist(){
    return <Playlist>[
      Playlist('Silver Soul', 'https://i.scdn.co/image/ab67616d0000b2739ba6a1b973e91955ab23c50c', 'Beach House','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/dc/75/ef/dc75ef0e-73a8-5efd-a213-1bd61d65b9b4/mzaf_16842107929889978783.plus.aac.p.m4a'),
      Playlist('Nights', 'https://i.scdn.co/image/ab67616d0000b273c5649add07ed3720be9d5526', 'Frank Ocean','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/74/5b/53/745b539d-0dbe-7ce2-e955-5c1794d33871/mzaf_1141225064511187149.plus.aac.p.m4a'),
      Playlist('Let it Happen', 'https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79', 'Tame Impala','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/c2/92/fa/c292fa02-ca8e-939b-bfaa-9c96f02f8341/mzaf_16657483012351208214.plus.aac.p.m4a'),
      Playlist('Yellow', 'https://i.scdn.co/image/ab67616d0000b2733d92b2ad5af9fbc8637425f0', 'Coldplay','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/8d/ee/7c/8dee7c1a-7225-2591-65f9-13d446d2f7e5/mzaf_9724821649877398003.plus.aac.p.m4a'),
      Playlist('Wonder', 'https://i.scdn.co/image/ab67616d0000b27337a5a19e52f8260b3b158e55', 'Shawn Mendes','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/c6/a3/aa/c6a3aa57-b35d-9ea0-e8b6-733f361c5502/mzaf_2244938798702661080.plus.aac.p.m4a'),
      Playlist('Someone you Loved', 'https://i.scdn.co/image/ab67616d0000b2737b9639babbe96e25071ec1d4', 'Lewis Capaldi','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/34/b6/82/34b682c2-dd16-15d4-e62b-4f010c96b33c/mzaf_17655739794372698018.plus.aac.p.m4a')
    ];
  }
  static List<Playlist> getmusic(){
    return <Playlist>[
      Playlist('Sticky', 'https://i.scdn.co/image/ab67616d0000b2738dc0d801766a5aa6a33cbe37', 'Drake','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/3b/f0/ae/3bf0aebb-3f9f-a65e-496e-f7c633a55c15/mzaf_9357133986019004867.plus.aac.p.m4a'),
      Playlist('Whats Poppin', 'https://i.scdn.co/image/ab67616d0000b27305c50cf7a461aa654fe9b15a', 'Jack Harlow','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/24/66/72/24667264-867a-f046-d262-b1470f0ab851/mzaf_10025331989603426612.plus.aac.p.m4a'),
      Playlist('Formula', 'https://i.scdn.co/image/ab67616d0000b27389c39ba1acdf33ed7acd3867', 'Labrinth','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/66/08/4b/66084b7a-c6bc-5ad5-5114-effb44db594d/mzaf_5110123645695738804.plus.aac.p.m4a'),
      Playlist('Dandelions', 'https://i.scdn.co/image/ab67616d0000b27396c2ed12fcaadba5e1eac696', 'Ruth B','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/12/f5/ed/12f5ed13-2ad1-6e60-50c3-7a325cb6e83f/mzaf_11446120754787758433.plus.aac.p.m4a'),
      Playlist('Sicko Mode', 'https://i.scdn.co/image/ab67616d0000b273072e9faef2ef7b6db63834a3', 'Travis Scott','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/ec/42/16/ec421678-7d11-165b-e3c7-f38be7fb2bdf/mzaf_14416678452845142602.plus.aac.p.m4a'),
      Playlist('Dont Let Me Go', 'https://i.scdn.co/image/ab67616d0000b273ced182a9a86195e9ba2a5183', 'Cigarettes After Sex','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/38/8d/c2/388dc201-788b-3ac2-63d3-711b9e5734a3/mzaf_8344500738651066667.plus.aac.p.m4a')
    ];
  }
}