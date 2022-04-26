import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Drawer/drawer.dart';

class Report_Screen extends StatelessWidget {
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
              // Divider(thickness: 1, color: Colors.black26,)
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(
                        color: Colors.black26
                    )
                ),
                child: Column(

                  children: [
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Text('قبل شهر', style: TextStyle(fontSize: 24),),
                        SizedBox(width: 3,),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Text('التحويل الي المناديب', style: TextStyle(fontSize: 24, color: Color(0xff707070)),),
                            SizedBox(height: 5,),
                            Text('40689', style: TextStyle(fontSize: 45, color: Color(0xff707070)),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.arrow_drop_up, color: Colors.green,),
                                Text('2.9%', style: TextStyle(fontSize: 16, color: Colors.green),),
                                Text('أعلي من الشهر السابق', style: TextStyle(fontSize: 21, color: Color(0xffD3D3D3)),)
                              ],),
                          ],),
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Text('إجمالي الطلبات', style: TextStyle(fontSize: 24, color: Color(0xff707070)),),
                            SizedBox(height: 5,),
                            Text('10293', style: TextStyle(fontSize: 45, color: Color(0xff707070)),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.arrow_drop_down, color: Colors.red,),
                                Text('1.2%', style: TextStyle(fontSize: 16, color: Colors.red),),
                                Text('أقل من الشهر السابق', style: TextStyle(fontSize: 21, color: Color(0xffD3D3D3)),)
                              ],),
                          ],),
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Text('إجمالي الربح', style: TextStyle(fontSize: 24, color: Color(0xff707070)),),
                            SizedBox(height: 5,),
                            Text('89,000 ريال', style: TextStyle(fontSize: 35, color: Color(0xff707070)),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.arrow_drop_up, color: Colors.green,),
                                Text('2.9%', style: TextStyle(fontSize: 16, color: Colors.green),),
                                Text('أعلي من الشهر السابق', style: TextStyle(fontSize: 21, color: Color(0xffD3D3D3)),)
                              ],),
                          ],),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
