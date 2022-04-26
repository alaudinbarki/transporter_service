import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/login.dart';
import 'package:tansporter/Screens/otp.dart';
import 'package:tansporter/Widgets/canstant.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 99),
            color: Color(0xff39afdf),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('تغيير كلمة السر', style: TextStyle(
                    fontFamily: 'Neo Sans Arabic',
                    fontSize: 39,
                    color: Colors.white),),
                SizedBox(height: 60,),
                Stack(
                  children: [
                    Positioned(
                        child: Container(
                          height: 520,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text('كلمة السر الجديدة'
                                , style: TextStyle(color: Color(0xff39afdf), fontSize: 19),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey.shade100,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,)),
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(13.0),
                                      enabled: true),
                                  enabled: true,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text('اعد إدخال كلمة السر الجديدة'
                                  , style: TextStyle(color: Color(0xff39afdf), fontSize: 19),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey.shade100,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none
                                        )
                                      ),
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(13.0),
                                      enabled: true),
                                  enabled: true,
                                ),
                              ),
                              SizedBox(height: 50,),
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Container(
                                  width: 310,
                                  height: 40,
                                  child: FlatButton(
                                    child: const Text('إرسال', style: TextStyle(fontSize: 19),),
                                    color: Color(0xff39afdf),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Get.to(Login());
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
