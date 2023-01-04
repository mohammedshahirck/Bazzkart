import 'package:ecommerce/view/account/account.dart';
import 'package:ecommerce/view/categories/categories.dart';
import 'package:ecommerce/view/home/home_screen.dart';
import 'package:ecommerce/view/my_bag/my_bag.dart';
import 'package:ecommerce/view/wishlist/wishlist.dart';
import 'package:flutter/cupertino.dart';

class BottomNavController extends ChangeNotifier {
  int index = 0;
  final List<Widget> screens = [
    const HomePage(),
    const Categories(),
    const MyBag(),
    const Favorites(),
    const Account(),
  ];

  List<Widget> get screen => screens;
  void bottomIndex(int bottomIndex) {
    index = bottomIndex;
    notifyListeners();
  }
}