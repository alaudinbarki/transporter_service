import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Drawer/drawer.dart';

class Map_Screen extends StatelessWidget {
  final keyForScafoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: keyForScafoldState,
        drawer:  AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () =>
                            keyForScafoldState.currentState?.openDrawer(),
                        icon: const Icon(Icons.menu_sharp)),
                    Image.asset(
                      'assets/logo.png',
                      height: 60,
                      width: 60,
                    ),
                    GestureDetector(
                      child: Icon(Icons.keyboard_backspace),
                      onTap: () => Get.to(MenuScreen()),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'بحث',
                      contentPadding: const EdgeInsets.all(13.0)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(child: Text('Map Screen'),),
            ]),
          ),
        ),
      ),
    );
  }
}
