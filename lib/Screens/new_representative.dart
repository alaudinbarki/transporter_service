import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/menu_screen.dart';
import 'package:tansporter/Drawer/drawer.dart';

class RepresentativeScreen extends StatelessWidget {
  RepresentativeScreen({Key? key}) : super(key: key);

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
                        GestureDetector(child: FaIcon(FontAwesomeIcons.arrowLeftLong,size: 20,color: Colors.grey,), onTap: () => Get.to(MenuScreen()),)
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
                          DataColumn(
                            label: Text('الإسم'),
                          ),
                          DataColumn(
                            label: Text('البريد الاكتروني'),
                          ),
                          DataColumn(
                            label: Text('رقم الجوال'),
                          ),
                          DataColumn(label: Text('رقم الهوية')),
                          DataColumn(label: Text('صورة الهوية')),
                          DataColumn(label: Text('استمارة السيارة')),
                          DataColumn(label: Text('صورة الرخصه')),
                          DataColumn(label: Text('صورة اللوحه')),
                          DataColumn(label: Text('تاريخ الإنضمام')),
                          DataColumn(label: Text('نوع الخدمه')),
                          DataColumn(label: Text('الحاله'))
                        ],
                        rows: <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                          child: Row(
                                            children:[
                                              Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                              Text('تفعيل')
                                            ]
                                          )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(ListTile(
                                leading: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                  AssetImage('assets/abdul.png'),
                                ),
                                title: Text('محمد السيد علي ابراهيم'),
                                minLeadingWidth: 2,
                                horizontalTitleGap: 3,
                              )),
                              DataCell(Text('hsskdsb@yahoo.com')),
                              DataCell(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('+9601501051'))),
                              DataCell(Text('12345678910')),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Icon(Icons.image)),
                              DataCell(Text('20/2/2022')),
                              DataCell(Text('نقل طرود')),
                              DataCell(Container(
                                  height: 100,
                                  child: Column(
                                      children : <Widget>[
                                        Expanded(
                                            child: Row(
                                                children:[
                                                  Icon(Icons.radio_button_checked, color: Colors.black38,size: 18,),
                                                  Text('تفعيل')
                                                ]
                                            )
                                        ),
                                        Expanded(
                                            child: Row(children: [
                                              Icon(Icons.radio_button_off_outlined, color: Colors.black38, size: 18,),
                                              Text('غير مكتمل')
                                            ],)
                                        ),
                                      ])
                              ),
                              ),
                            ],
                          ),
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
