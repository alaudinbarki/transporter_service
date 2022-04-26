import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/otp.dart';
import 'package:tansporter/Widgets/canstant.dart';

class Send extends StatelessWidget {
  const Send({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            color: Color(0xff39afdf),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('نسيت الرقم السري', style: TextStyle(
                    fontSize: 39,
                    color: Colors.white),
                ),
                Text('من فضلك قم بإدخال رقم جوالك'
                , style: TextStyle(color: Colors.white, fontSize: 21),),
                Text('المسجل لأرسال رمز التأكيد', style: TextStyle(color: Colors.white, fontSize: 21),),
                SizedBox(height: 50,),
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
                              SizedBox(height: 65,),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text('رقم الجوال'
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

                              SizedBox(height: 60,),
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
                                      Get.to(OTP());
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
