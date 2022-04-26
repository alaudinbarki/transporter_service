import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/active_clients.dart';
import 'package:tansporter/Screens/active_delgate_2.dart';
import 'package:tansporter/Screens/banned_clients.dart';
import 'package:tansporter/Screens/banned_delegate.dart';
import 'package:tansporter/Screens/chat_screen.dart';
import 'package:tansporter/Screens/client_application_screen.dart';
import 'package:tansporter/Screens/complaints_being_processed_screen.dart';
import 'package:tansporter/Screens/distinguished_delegate.dart';
import 'package:tansporter/Screens/map.dart';
import 'package:tansporter/Screens/new_representative.dart';
import 'package:tansporter/Screens/order_screen.dart';
import 'package:tansporter/Screens/reports_screen.dart';
import 'package:tansporter/Screens/special_clients.dart';
import 'package:tansporter/Screens/statistics_report_screen.dart';
import 'package:tansporter/Screens/terms_and_conditions.dart';
import 'package:tansporter/Widgets/home_icons.dart';

import '../Screens/about_us_screen.dart';
import '../Screens/active_delegate_screen.dart';
import '../Screens/new_clients_screen.dart';
import '../Screens/menu_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AppDrawer extends StatefulWidget {


  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 50,),
          ListTile(
            onTap: () => Get.to(MenuScreen()),
            minLeadingWidth: 2,
            contentPadding: EdgeInsets.all(16),
            leading: Container(
              height: 100,
              child: CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/abdul.png'),
            )),
            // leading: CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/abdul.png'),),
            title: Text('مرحبا بعودتك', style: TextStyle(color: Colors.black38),),
            subtitle: Text('أحمد محمد', style: TextStyle(color: Colors.black, fontSize: 20),),
          ),
          Divider(thickness: 1,),
          ListTile(
            title: Text('الرئيسية', style: TextStyle(fontSize: 21, color: Colors.blue),),
            leading: Icon(Home.icon_metro_home_2, size: 20,),
            horizontalTitleGap: 0.1,
            minLeadingWidth: 4,
          ),
          // ListTile(
          //   horizontalTitleGap: 1,
          //   minLeadingWidth: 5,
          //   leading: Icon(Icons.train_outlined),
          //   title: Text('المناديب', style: TextStyle(fontSize: 21, color: Colors.blue)),
          //   trailing: GestureDetector(child: Icon(Icons.arrow_drop_down), onTap: (){},),
          //   contentPadding: EdgeInsets.only(left: 150, right: 15),
          // ),
          ExpansionTile(title: Text('المناديب', style: TextStyle(fontSize: 21, color: Colors.blue),),
          leading: FaIcon(FontAwesomeIcons.truckMoving, size: 20,),
          // Icon(Icons.train_outlined),
          children: [
            ListTile(
              title: Text('مندوب جديد'),
              onTap: ()=> Get.to(RepresentativeScreen()),
            ),
            ListTile(
              title: Text('مندوب مفعل'),
              onTap: ()=> Get.to(Active_Delegate_Screen()),
            ),
            ListTile(
              title: Text('مندوب مميز'),
              onTap: () => Get.to(Distinguished_Delgate_Screen()),
            ),
            ListTile(
              title: Text('مندوب نشط'),
              onTap: () => Get.to(Active_Delgate_Screen_2()),
            ),
            ListTile(
              title: Text('مندوب محظور'),
              onTap: () => Get.to(Banned_Delgate_Screen()),
            )
          ],),
          ExpansionTile(title: Text('العملاء', style: TextStyle(fontSize: 21, color: Colors.blue),),
          leading: Icon(Icons.people_alt),
          children: [
            ListTile(
              title: Text('عملاء جدد'),
              onTap: () =>Get.to(New_Cilent_Sceen()),
            ),
            ListTile(
              title: Text('عملاء نشطه'),
              onTap: () =>Get.to(Active_Cilent_Screen()),
            ),
            ListTile(
              title: Text('عملاء مميزه'),
              onTap: () =>Get.to(Special_Cilent_Screen()),
            ),
            ListTile(
              title: Text('عملاء محظورين'),
              onTap: () => Get.to(Banned_Cilent_Screen()),
            )
          ],),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.mapMarkedAlt,size: 20,),
            title: Text('الخريطه', style: TextStyle(fontSize: 21, color: Colors.blue),),
            minLeadingWidth: 4,
            horizontalTitleGap: 1,
            onTap: ()=> Get.to(Map_Screen()),
          ),
          ListTile(
            title: Text('الشات', style: TextStyle(fontSize: 21, color: Colors.blue),),
            leading: Icon(Home.icon_ionic_ios_chatboxes_c,size: 20,),
            minLeadingWidth: 4,
            horizontalTitleGap: 1,
            onTap: ()=> Get.to(Chat_Screen()),
          ),
          ListTile(
            title: Text('الطلبات', style: TextStyle(fontSize: 21, color: Colors.blue),),
            leading: FaIcon(FontAwesomeIcons.shoppingCart, size: 20,),
            minLeadingWidth: 4,
            horizontalTitleGap: 1,
            onTap: ()=> Get.to(Order_Screen()),
          ),
          ListTile(
            title: Text('الشكاوي',style: TextStyle(fontSize: 21, color: Colors.blue),),
            leading: FaIcon(FontAwesomeIcons.medapps),
            minLeadingWidth: 4,
            horizontalTitleGap: 1,
            onTap: ()=> Get.to(Complaints_Being_Processed_Screen()),
          ),
          ListTile(
            title: Text('الإحصائيات', style: TextStyle(fontSize: 21, color: Colors.blue),),
            leading: Icon(Icons.business),
            minLeadingWidth: 4,
            horizontalTitleGap: 1,
            onTap: ()=>Get.to(Statistics_Report_Screen()),
          ),
          DottedLine(
            direction: Axis.horizontal,
            dashLength: 12,
            dashGapLength: 12,
            lineThickness: 2,
            dashColor: Colors.black12,
          ),
          ListTile(
            leading: Icon(Icons.settings_applications_sharp),
            title: Text('التطبيق', style: TextStyle(fontSize: 21, color: Colors.blue),),
            minLeadingWidth: 4,
            horizontalTitleGap: 1,
            onTap: ()=>Get.to(Cilent_Application_Screen()),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.businessTime,size: 20,),
            title: Text('التقارير',style: TextStyle(fontSize: 21, color: Colors.blue),),
            minLeadingWidth: 4,
            horizontalTitleGap: 1,
            onTap:() => Get.to(Report_Screen()),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.solidQuestionCircle, size: 20,),
            title: Text('من نحن ', style: TextStyle(fontSize: 21, color: Colors.blue),),
            horizontalTitleGap: 1,
            minLeadingWidth: 4,
            onTap: ()=>Get.to(About_Us_Screen()),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.exclamationCircle, size: 20,),
            title: Text(' شروط وأحكام', style: TextStyle(fontSize: 21, color: Colors.blue),),
            horizontalTitleGap: 1,
            minLeadingWidth: 4,
            onTap: ()=> Get.to(Terms_and_Conditions_Screen()),
          ),
        ],
      ),
    ));
  }
}
