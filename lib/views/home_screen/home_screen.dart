import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/home_buttons.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/colors.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(

          child:Column(
          children: [
            Container(
              alignment: Alignment.center ,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),

            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child:Column(
                children: [
                  //swipers brands
              VxSwiper.builder(
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: slidersList.length, 
                itemBuilder: (context, index){
                  return  Image.asset(
                      slidersList[index],
                      fit: BoxFit.fitWidth,
                  ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal:8)).make();
                }),

                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(2, 
                  (index) => homeButtons(
                    height: context.screenHeight * 0.15,
                    width: context.screenWidth / 2.5,
                    icon: index == 0 ? icTodaysDeal : icFlashDeal,
                    title: index == 0 ? todayDeal: flashsale,
                  )),
                  ),

                  //Second Swipers
                  10.heightBox,
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondSlidersList.length, 
                    itemBuilder: (context, index){
                      return  Image.asset(
                          secondSlidersList[index],
                          fit: BoxFit.fitWidth,
                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal:8)).make();
                  }),

                  //Category Buttons
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 3.5,
                      icon: index == 0 ? icTopCategories : index == 1 ? icBrands: icTopSeller,
                      title: index == 0 ? topCategories: index == 1 ? brand : topSellers,
                    )),
                  ),

                  //featured categories
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                  )
                ],
            )))
          ],)),
      );
  }
}