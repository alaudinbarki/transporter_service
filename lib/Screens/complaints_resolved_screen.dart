import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Drawer/drawer.dart';
import 'complaints_being_processed_screen.dart';

class Complaints_Resolved_Screen extends StatelessWidget {
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
                  InkWell(
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
                  InkWell(
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
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('علي محمد السيد', style: TextStyle(fontSize: 16,color: Colors.blue),),
                    Text('22/2/2022', style: TextStyle(fontSize: 16, color: Colors.black),)
                  ],
                ),
                trailing: Text('416546', style: TextStyle(fontSize: 16),),
                leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png',),radius: 15,),
                minLeadingWidth: 1,
                horizontalTitleGap: 1,
              ),
              Stack(
                children:[Container(
                  height: 200,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: SingleChildScrollView(
                    child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني', style: TextStyle(fontSize: 16, color: Color(0xff707070)),),
                  ),
                )]
              ),
              SizedBox(height: 5,),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('علي محمد السيد', style: TextStyle(fontSize: 16,color: Colors.blue),),
                    Text('22/2/2022', style: TextStyle(fontSize: 16, color: Colors.black),)
                  ],
                ),
                trailing: Text('416546', style: TextStyle(fontSize: 16),),
                leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png',),radius: 15,),
                minLeadingWidth: 1,
                horizontalTitleGap: 1,
              ),
              Stack(
                  children:[Container(
                    height: 200,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: SingleChildScrollView(
                      child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني', style: TextStyle(fontSize: 16, color: Color(0xff707070)),),
                    ),
                  )]
              ),
              SizedBox(height: 5,),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('علي محمد السيد', style: TextStyle(fontSize: 16,color: Colors.blue),),
                    Text('22/2/2022', style: TextStyle(fontSize: 16, color: Colors.black),)
                  ],
                ),
                trailing: Text('416546', style: TextStyle(fontSize: 16),),
                leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png',),radius: 15,),
                minLeadingWidth: 1,
                horizontalTitleGap: 1,
              ),
              Stack(
                  children:[Container(
                    height: 200,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: SingleChildScrollView(
                      child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني', style: TextStyle(fontSize: 16, color: Color(0xff707070)),),
                    ),
                  )]
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
