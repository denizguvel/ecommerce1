import 'dart:math';

import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState()=> _SignupScreenState();
}
  class _SignupScreenState extends State<SignupScreen>{
    
    bool? isCheck = false;

    @override
    Widget build(BuildContext context) {
      return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false, //to avoid warning
          body: Center(
            child: SingleChildScrollView( 
              child: Column(
                children: [
                  (context.screenHeight * 0.1).heightBox,
                  applogoWidget(),
                  10.heightBox,
                  "Join the $appname".text.fontFamily(bold).white.size(18).make(),
                  15.heightBox,
                  Column(
                    children: [
                      customTextField(hint: nameHint, title: name),
                      customTextField(hint: emailHint, title: email),
                      customTextField(hint: passwordHint, title: password),
                      customTextField(hint: passwordHint, title: retypePassword),
                      Align(
                        alignment: Alignment.centerRight,
                        child:TextButton(onPressed: () {}, child: forgetPass.text.make())),
                      //ourButton().box.width(context.screenWidth - 50).make(),        
                      Row(
                        children: [
                          Checkbox(
                            checkColor: whiteColor,
                            activeColor: redColor,
                            value: isCheck, 
                            onChanged: (newValue) {
                              setState(() {
                                isCheck = newValue;
                              });
                            }
                          ),
                          10.heightBox,
                          Expanded(child: 
                            RichText(
                              text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: fontGrey,
                                  )),
                                TextSpan(
                                  text: termAndCond,
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: redColor
                                  )),
                                TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey
                                )),
                                TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: redColor
                                )),
                              ]
                            ))
                          )
                        ],
                      ),
                      5.heightBox,
                      ourButton(color: isCheck == true?  redColor : lightGrey, title: signup, textColor: whiteColor, onPress: (){})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                      10.heightBox,
                      RichText(text: const TextSpan(
                        children: [
                          TextSpan(
                            text: alreadyHaveAccount,
                            style: TextStyle(fontFamily: bold, color: fontGrey),
                          ),
                          TextSpan(
                            text: login,
                            style: TextStyle(fontFamily: bold, color: redColor),
                          )
                        ]
                      )).onTap(() {
                        Get.back();
                      }),
                    ],
                  ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make()
              ],)
            )
            )
        ));
    }
  }
