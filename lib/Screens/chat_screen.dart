import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Widgets/chat_massage.dart';
import '../Drawer/drawer.dart';

class Chat_Screen extends StatelessWidget {
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
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
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
                ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png'),),
                      minLeadingWidth: 1,
                      horizontalTitleGap: 2,
                      title: ChatBubble(

                        clipper: ChatBubbleClipper4(type: BubbleType.sendBubble, offset: 22),
                        // margin: EdgeInsets.only(top: 20),
                        // padding: EdgeInsets.all(12),
                        backGroundColor: Color(0xff0066B1),
                        alignment: Alignment.topRight,
                        child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى', style: TextStyle(color: Colors.white, fontSize: 12),),
                      ),
                    ),
                SizedBox(height: 5,),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png'),),
                    minLeadingWidth: 1,
                    horizontalTitleGap: 2,
                    title: ChatBubble(
                      clipper: ChatBubbleClipper4(type: BubbleType.receiverBubble, offset: 65,),
                      // margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(12),
                      backGroundColor: Color(0xff707070),
                      alignment: Alignment.topLeft,
                      child: Text('ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png'),),
                  minLeadingWidth: 1,
                  horizontalTitleGap: 2,
                  title: ChatBubble(

                    clipper: ChatBubbleClipper4(type: BubbleType.sendBubble, offset: 22),
                    // margin: EdgeInsets.only(top: 20),
                    // padding: EdgeInsets.all(12),
                    backGroundColor: Color(0xff0066B1),
                    alignment: Alignment.topRight,
                    child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى', style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                ),
                SizedBox(height: 5,),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png'),),
                    minLeadingWidth: 1,
                    horizontalTitleGap: 2,
                    title: ChatBubble(
                      clipper: ChatBubbleClipper4(type: BubbleType.receiverBubble, offset: 65),
                      // margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(12),
                      backGroundColor: Color(0xff707070),
                      alignment: Alignment.topLeft,
                      child: Text('ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png'),),
                  minLeadingWidth: 1,
                  horizontalTitleGap: 2,
                  title: ChatBubble(

                    clipper: ChatBubbleClipper4(type: BubbleType.sendBubble, offset: 22),
                    // margin: EdgeInsets.only(top: 20),
                    // padding: EdgeInsets.all(12),
                    backGroundColor: Color(0xff0066B1),
                    alignment: Alignment.topRight,
                    child: Text('لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى', style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                ),
                SizedBox(height: 5,),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage('assets/abdul.png'),),
                    minLeadingWidth: 1,
                    horizontalTitleGap: 2,
                    title: ChatBubble(
                      clipper: ChatBubbleClipper4(type: BubbleType.receiverBubble, offset: 65),
                      // margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(12),
                      backGroundColor: Color(0xff707070),
                      alignment: Alignment.topLeft,
                      child: Text('ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس لوريم إيبسوم هو ببساطة نص شكلي  بمعنى أن الغاية هي الشكل وليسالمحتوى', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
              ]),
            ),
          ),
        ));
  }
}
