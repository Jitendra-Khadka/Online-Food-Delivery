import 'package:flutter/material.dart';
import 'package:online_food_order/app_height_width.dart';
import 'package:online_food_order/pages/home/menu/menu_page.dart';
import 'package:online_food_order/pages/login_pages/common_components/gradient_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GradientContainer(
          childs: Padding(
            padding: const EdgeInsets.all(10.0),
            child: MenuPage(),
          ),
        ),
        
        bottomNavigationBar: Container(
          color: Color(0xFF7DD35B),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(),
              BottomNavigationBar(
                backgroundColor: Color(0xFF7DD35B),
                type: BottomNavigationBarType.fixed, // type fixed vayo matrai background color change huni raixa
                landscapeLayout: BottomNavigationBarLandscapeLayout.spread, // items are equally spread in navigation bar
                iconSize: App_size.app_width* 0.09,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.black,), label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.whatshot_outlined, color: Colors.black), label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined, color: Colors.black), label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined, color: Colors.black), label: ""),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}