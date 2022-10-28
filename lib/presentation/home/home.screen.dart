import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movies_apps/presentation/home/views/movieview_view.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  static final iconList = <IconData>[
    Icons.dashboard,
    Icons.explore,
    Icons.person
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        color: Colors.white,
        activeColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          TabItem(icon: Icons.home, title: 'Home',),
          TabItem(icon: Icons.explore, title: 'Explore'),
          TabItem(icon: Icons.person, title: 'Account')
        ],

      ),
      body: const MovieviewView(),
    );
  }
}
