import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';

import '../Drawer/drawer.dart';

class Banned_Cilent_Screen extends StatelessWidget {
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
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 16, right: 16, top: 12),
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
                    padding:
                    const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'بحث',
                          contentPadding: const EdgeInsets.all(13.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InteractiveViewer(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        border: TableBorder.symmetric(
                          inside:
                          const BorderSide(width: 1, color: Colors.black12),
                        ),
                        columns: const <DataColumn>[
                          DataColumn(label: Text('الإسم')),
                          DataColumn(label: Text('رقم الطلب')),
                          DataColumn(label: Text('البريد الاكتروني')),
                          DataColumn(label: Text('رقم الجوال')),
                          DataColumn(label: Text('النوع')),
                          DataColumn(label: Text('تاريخ الإنضمام')),
                          DataColumn(label: Text('الحاله')),
                          DataColumn(label: Text('سبب الحظر')),
                          DataColumn(label: Text('الحاله'))
                        ],
                        rows: <DataRow>[
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                          DataRow(cells: <DataCell>[
                            DataCell(ListTile(
                              leading: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/guy.png'),
                              ),
                              title: Text('محمد السيد علي ابراهيم'),
                              contentPadding: EdgeInsets.only(left: 15),
                              minLeadingWidth: 1,
                              horizontalTitleGap: 4,
                            )),
                            DataCell(Text('11223')),
                            DataCell(Text('hsskdsb@yahoo.com')),
                            DataCell(Text('+9601501051')),
                            DataCell(Text('ذكر')),
                            DataCell(Text('20/2/2022')),
                            DataCell(Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.radio_button_checked),
                                          Text('تفعيل')
                                        ],
                                      )),
                                  Expanded(child: Row(children: [Icon(Icons.radio_button_unchecked_sharp), Text('غير مكتمل')],))
                                ],
                              ),
                            )),
                            DataCell(Column(children: [Text('لم يقوم بتسليم الطرد في'), Text('الموعد المحدد')],)),
                            DataCell(FlatButton(onPressed: (){}, child: Text('ارسال شعار'), color: Colors.white,))
                          ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
