import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/images.dart';
import 'package:emart_app/consts/strings.dart';
import 'package:emart_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());
    
    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26), label: account)
    ];

    var navBody = [
      Container(color: Colors.blue),
      Container(color: Colors.amber),
      Container(color: Colors.purple),
      Container(color: Colors.cyan),
    ];
    return Scaffold(
      body: Column(children: [ 
         Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
      ],), 
      bottomNavigationBar: Obx(()=>
      BottomNavigationBar(
        currentIndex: controller.currentNavIndex.value,
        selectedItemColor: redColor,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        items: navbarItem,
        onTap: (value){
          controller.currentNavIndex.value = value;
        }),
      )
    );
  }
}