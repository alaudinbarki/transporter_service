import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';
import '../Drawer/drawer.dart';

class Terms_and_Conditions_Screen extends StatelessWidget {
  final keyForScafoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: keyForScafoldState,
        drawer: AppDrawer(),
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
              SizedBox(
                height: 5,),
              Divider(thickness: 1, color: Colors.black26,),
              SizedBox(height: 8,),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffcbcbcb)
                ),
                child: Center(
                  child: Text('تعديل الشروط والأحكام في التطبيق', style: TextStyle(fontSize: 16, color: Colors.white),),
                ),
              ),
              SizedBox(height: 8,),
              Align(child: Text('شروط وأحكام', style: TextStyle(fontSize: 24, color: Color(0xff707070)),), alignment: Alignment.topRight,widthFactor: 2.5,),
              SizedBox(height: 5,),
              Container(
                height: 450,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xff707070))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      direction: Axis.horizontal,
                      dashLength: 5,
                      dashGapLength: 5,
                      lineThickness: 2,
                      dashColor: Colors.black12,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff39AFDF)
                ),
                height: 40,
                width: 300,
                child: Center(child: Text('تحديث', style: TextStyle(fontSize: 16, color: Colors.white),)),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
