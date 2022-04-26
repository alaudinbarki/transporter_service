import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Drawer/drawer.dart';


class Cilent_Application_Screen extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffcbcbcb)
                    ),
                    child: Center(child: Text('تطبيق العميل', style: TextStyle(fontSize: 16, color: Colors.white),)),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:Color(0xffcbcbcb)),
                        // color: Colors.white
                    ),
                    child: Center(child: Text('تطبيق المندوب', style: TextStyle(fontSize: 16, color:Color(0xffcbcbcb)),)),
                  )
                ],
              ),
              SizedBox(height: 8,),
              Container(
                height: 100,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xffcbcbcb))
                ),
                child:Center(
                  child: Text('أضافة بنر رئيسي', style: TextStyle(fontSize: 20, color: Color(0xff818181)),),
                )
              ),
              Align(child: Text('تغيير الأقسام', style: TextStyle(fontSize: 24, color: Color(0xff818181)),), alignment: Alignment.topRight,widthFactor: 2.8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('القسم الأول', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('القسم الثاني', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('القسم الثالث', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('القسم الرابع', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('القسم الخامس', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('القسم السادس', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 5,),
              Align(child: Text('ترتيب الأقسام', style: TextStyle(fontSize: 24, color: Color(0xff818181)),), alignment: Alignment.topRight,widthFactor: 2.6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('1', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('2', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('3', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('4', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('5', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xff818181))
                        ),
                        child: Center(
                          child: Icon(Icons.add_a_photo_rounded, color: Color(0xff818181),),
                        ),
                      ),
                      Text('6', style: TextStyle(fontSize: 16, color: Color(0xff818181)),)
                    ],
                  ),
                  SizedBox(height: 8,),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff39AFDF)
                ),
                child: Center(
                  child: Text('تحديث', style: TextStyle(fontSize: 16, color: Colors.white),),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
