import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tansporter/Drawer/drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tansporter/Widgets/home_icons.dart';

class MenuScreen extends StatelessWidget {
  final keyScafold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: keyScafold,
        endDrawer: AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/ahmad.png'),
                      ),
                      Image.asset(
                        "assets/logo.png",
                        height: 60,
                        width: 60,
                      ),
                      IconButton(
                        icon: Icon(Home.group_110,size: 18, color: Colors.black),
                        onPressed: () => keyScafold.currentState?.openEndDrawer(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Center(
                    child: Container(
                      height: 50,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'بحث',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.black12
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.add_circle_outline,
                              size: 20,
                              color: Colors.blue,
                            )),
                            TextSpan(
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16,fontFamily: 'Neo Sans Arabic'),
                                text: 'أضف عضو جديد')
                          ],
                        ),
                      ),
                      Text(
                        'لتقارير اليومية',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 8, bottom: 8),
                  child: Container(
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    // color: Colors.black12,
                    child: Column(
                      children: <Widget>[
                        const Center(
                          child: Text(
                            'تقارير الطلبات اليومية',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black54,
                                ),
                                Text(
                                  'الاثنين',
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            CircularPercentIndicator(
                              radius: 90.0,
                              lineWidth: 16.0,
                              percent: 0.5,
                              header: const Text(""),
                              center: Text(
                                '92%',
                                style: TextStyle(fontSize: 28),
                              ),
                              backgroundColor: Colors.orange,
                              progressColor: Colors.blue,
                              // arcBackgroundColor: Colors.red,
                              // arcType: ArcType.FULL,
                              // reverse: true,
                              animation: true,
                              animationDuration: 1200,
                              circularStrokeCap: CircularStrokeCap.butt,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black54,
                                ),
                                Text(
                                  'السبت',
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: const [
                                Text(
                                  '73',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                                Text(
                                  'الملغاة',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '510',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                                Text(
                                  'الملغاة',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '2850',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                                Text(
                                  'المكتملة',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '3433',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                                Text(
                                  'المكتملة',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الطلبات النشطه',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                            '(16)',
                            style: TextStyle(fontSize: 20),
                          ),
                      ],
                    ),
                  ),
                ),
                 Directionality(
                   textDirection: TextDirection.rtl,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 93),
                     child: Text(
                        'المناديب القائمين علي التوصيل حاليا',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        ),
                      ),
                   ),
                 ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  height: 10,
                  thickness: 1.5,
                  indent: 20,
                  endIndent: 18,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    minLeadingWidth: 1,
                      horizontalTitleGap: 3,
                      // contentPadding: EdgeInsets.all(3),
                      minVerticalPadding: 1,
                      leading: new CircleAvatar(
                        radius: 15,
                        // child: Image.asset('assets/alsaad.png'),
                        backgroundImage: AssetImage('assets/alsaad.png'),
                      ),
                      title: const Text(
                        "محمد السيد",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      subtitle: const Text('الرياض'),
                      onTap: () => print("ListTile")),
                ),
                Divider(
                  height: 10,
                  thickness: 1.5,
                  indent: 20,
                  endIndent: 18,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                      leading: new CircleAvatar(
                        radius: 15,
                        // child: Image.asset("assets/ali.png"),
                        backgroundImage: AssetImage('assets/ali.png'),
                      ),
                      title: const Text(
                        "محمد السيد علي ابراهيم",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      subtitle: const Text('جدة'),
                      onTap: () => print("ListTile")),
                ),
                Divider(
                  height: 10,
                  thickness: 1.5,
                  indent: 20,
                  endIndent: 18,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                      leading: new CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/abdul.png'),
                      ),
                      title: const Text(
                        "محمد عبد الحكيم",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      subtitle: const Text('المدينة المنورة'),
                      onTap: () => print("ListTile")),
                ),
                Divider(
                  height: 10,
                  thickness: 1.5,
                  indent: 20,
                  endIndent: 18,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                      leading: new CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/ahmad.png'),
                      ),
                      title: const Text(
                        "إبراهيم رياض علي",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      subtitle: const Text('القطيف'),
                      onTap: () => print("ListTile")),
                ),
              ],
            ),
          ),
        ));
  }
}
