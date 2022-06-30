import 'package:spotify_clone/models/category.dart';

class CategoryOperations
{
  static List<Category> getCategories(){
    CategoryOperations_(){}
    return <Category>[
      Category('Happy Pop Hits', 'https://i.scdn.co/image/ab67706f000000038d90dd98d40fd7fba2fd0223'),
      Category('Timeless \nLove Songs', 'https://i.scdn.co/image/ab67706f00000003b91a46fe49103f8610b46068'),
      Category('Lo-fi Beats', 'https://womenlovetech.com/wp-content/uploads/2020/12/Lo-Fi-Beats.jpg'),
      Category('Chilled Hits', 'https://i.scdn.co/image/ab67706f00000003fb216d1ce13d5a4952a6180e'),
      Category('Focus Music', 'https://i.scdn.co/image/ab67706c0000bebbd16558b8959ada40635bc259'),
      Category('Wholesome', 'https://i.scdn.co/image/ab67706f0000000305b1d596f7ca3978911d4c38')
    ];
  }
}