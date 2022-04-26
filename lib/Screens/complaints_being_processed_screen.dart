import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/complaints_resolved_screen.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Drawer/drawer.dart';


class Complaints_Being_Processed_Screen extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: ()=> Get.to(Complaints_Being_Processed_Screen()),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffCBCBCB)
                      ),
                      child: Center(child: Text('شكاوي قيد المعالجة', style: TextStyle(fontSize: 16, color: Colors.white),)),
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=> Get.to(Complaints_Resolved_Screen()),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black54
                          ),
                          color: Colors.white
                      ),
                      child: Center(child: Text('شكاوي تم حلها', style: TextStyle(fontSize: 16, color: Color(0xffCBCBCB)),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Column(
                  children: [
                    Text('رقم الشكوي', style: TextStyle(fontSize: 16 , color: Colors.grey,),),
                    Text('416456', style: TextStyle(fontSize: 16 , color: Color(0xff0066B1),),),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                      children: [
                        Text('الأسم', style: TextStyle(fontSize: 16, color: Color(0xff707070)),),
                        Text('علي محمد السيد', style: TextStyle(fontSize: 16, color: Color(0xff0066B1)),)
                      ],
                    ),
                  Column(
                    children: [
                      Text('رقم الجوال', style: TextStyle(fontSize: 16, color: Color(0xff707070)),),
                      Text('966464664', style: TextStyle(fontSize: 16, color: Color(0xff0066B1)),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('تاريخ الطلب', style: TextStyle(fontSize: 16, color: Color(0xff707070)),),
                      Text('22/2/2022', style: TextStyle(fontSize: 16, color: Color(0xff0066B1)),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: SingleChildScrollView(child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني', style: TextStyle(fontSize: 20, color: Colors.black54),)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 40,
                width: 300,
                child: Center(child: Text('ارسال شعار', style: TextStyle(fontSize: 16, color: Colors.white),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 40,
                width: 300,
                child: Center(child: Text('تعويض', style: TextStyle(fontSize: 16, ),)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black
                    ),
                    color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 40,
                width: 300,
                child: Center(child: Text('تم الحل', style: TextStyle(fontSize: 16, ),)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    ),
                    color: Colors.white,

                ),
              )
              // FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.blue, minWidth: 300, ),
              // FlatButton(onPressed: (){}, child: Text('تعويض'), color: Colors.white, minWidth: 300,),
              // FlatButton(onPressed: (){}, child: Text('تم الحل'), color: Colors.white, minWidth: 300,)
            ]),
          ),
        ),
      ),
    );
  }
}
