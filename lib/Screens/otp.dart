import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
import 'package:tansporter/Screens/verify.dart';
import 'package:tansporter/Widgets/canstant.dart';



class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

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
                Text('رمز التأكيد', style: TextStyle(
                    fontFamily: 'Neo Sans Arabic',
                    fontSize: 39,
                    color: Colors.white),),
                Text('من فضلك قم بإدخال رمز التأكيد'
                  , style: TextStyle(color: Colors.white, fontSize: 21),),
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
                              // OTPTextField(
                              //     length: 4,
                              //     width: MediaQuery.of(context).size.width,
                              //     fieldWidth: 50,
                              //     style: TextStyle(fontSize: 17),
                              //     textFieldAlignment: MainAxisAlignment.spaceAround,
                              //     onCompleted: (pin) {
                              //       print("Completed: " + pin);
                              //     },
                              //     otpFieldStyle: OtpFieldStyle(
                              //       borderColor: Colors.black,
                              //     )),

                              TextFieldPin(
                      // textController: textEditingController,
                      autoFocus: true,
                      codeLength: 4,
                      alignment: MainAxisAlignment.center,
                      defaultBoxSize: 46.0,
                      margin: 10,
                      selectedBoxSize: 46.0,
                      textStyle: const TextStyle(fontSize: 16,color: Colors.black),
                      defaultDecoration: _pinPutDecoration.copyWith(
                          border: Border.all(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.6))),
                      selectedDecoration: _pinPutDecoration,
                      onChange: (code) {

                       // _onOtpCallBack(code,false);
                      }),

                              SizedBox(height: 60,),
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Container(
                                  width: 310,
                                  height: 40,
                                  child: FlatButton(
                                    child: const Text('ارسل', style: TextStyle(fontSize: 19),),
                                    color: Color(0xff39afdf),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Get.to(Verify());
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
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.green),
      borderRadius: BorderRadius.circular(15.0),
    );
  }


}


