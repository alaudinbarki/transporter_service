import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Drawer/drawer.dart';

class Order_Screen extends StatelessWidget {
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
                width: 330,
                padding: EdgeInsets.only(right: 10),
                // color: Color(0xffACACAC),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffACACAC),
                ),
                child: Align(   child: Text('مثال:  246664', style: TextStyle(fontSize: 20, color: Colors.white),), alignment: Alignment.centerRight,),
                ),
              Text('أدخل رقم الطلب المراد مشاهده الشات له', style: TextStyle(fontSize: 20, color: Color(0xffACACAC)),),
              Container(
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('اسم العميل', style: TextStyle(fontSize: 20, color: Color(0xffACACAC)),),
                        Text('اسم المندوب', style: TextStyle(fontSize: 20, color: Color(0xffACACAC)),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('محمد علي', style: TextStyle(fontSize: 20, color: Color(0xff0066B1)),),
                        Text('احمد السيد محمود', style: TextStyle(fontSize: 20, color: Color(0xff0066B1)),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Text('تفاصيل الطلب', style: TextStyle( fontSize: 20, color: Color(0xffACACAC)),),
                    ),
                    Stack(
                      children: [
                        Positioned(child: Container(
                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: SingleChildScrollView(
                            child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني', style: TextStyle(fontSize: 20, color: Color(0xff707070)),),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('موقع التسليم', style: TextStyle(fontSize: 16, color: Color(0xff707070)),),
                        Text('موقع الاستلام', style: TextStyle(fontSize: 16,color: Color(0xff707070) ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('شارع عبدالله السيد - المدينه', style: TextStyle(fontSize: 16, color: Color(0xff0066b1)),),
                        Text('شارع سليم - الطائف', style: TextStyle(fontSize: 16,color: Color(0xff0066B1) ),)
                      ],
                    )
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
