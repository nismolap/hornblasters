// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController{

  //Buttons URL
  final SHOP_NOW = 'https://hornblasters.com' ;
  final DEALER_INSTALLER_LOCATOR = 'https://hornblasters.com/pages/dealer-installer-locator' ;
  final HELP_CENTER = 'https://hornblasters.com/pages/help-center' ;

  //Social Media Links
  final Twitter = 'https://twitter.com/intent/user?screen_name=hornblasters' ;
  final Facebook = 'https://facebook.com/hornblasters' ;
  final Youtube = 'https://www.youtube.com/user/hornblasters?sub_confirmation=1' ;
  final TikTok = 'https://www.tiktok.com/@hornblasters' ;
  final Instagram = 'https://instagram.com/hornblasters' ;
  final Snapchat = 'https://www.snapchat.com/add/hornblasters' ;

  //Phone Number
  final Call_Toll_Free = 'tel:+1-877-209-8179' ;
  final International = 'tel:+1-813-783-8058' ;


  void follow_us(){
    Get.defaultDialog(
      title: 'Follow Us',
      barrierDismissible: true,
      content: Column(
        children: [
          //Twitter
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(Twitter);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: P2,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/twitter.png'),width: 25,color: P5,),
                  Container(width: 10,),
                  const Text('Twitter',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
          //Facebook
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(Facebook);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: P1,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/facebook.png'),width: 30,color: P5,),
                  Container(width: 10,),
                  const Text('Facebook',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
          //YouTube
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(Youtube);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Colors.redAccent,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/youtube.png'),width: 30,),
                  Container(width: 10,),
                  const Text('YouTube',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
          //TikTok
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(TikTok);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: S1,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/tik-tok.png'),width: 25,color: P5,),
                  Container(width: 10,),
                  const Text('TikTok',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
          //Instagram
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(Instagram);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Colors.pinkAccent,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/instagram.png'),width: 25,color: P5,),
                  Container(width: 10,),
                  const Text('Instagram',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
          //SnapChat
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(Snapchat);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Colors.amber,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/snapchat.png'),width: 25,color: P5,),
                  Container(width: 10,),
                  const Text('SnapChat',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      radius: 20,
    );
  }

  void call_toll_free(){
    Get.defaultDialog(
      title: 'Follow Us',
      barrierDismissible: true,
      content: Column(
        children: [
          //Call Toll Free
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(Call_Toll_Free);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: P2,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone,size: 25,color: P5,),
                  Container(width: 10,),
                  const Text('Call Toll Free',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
          //International
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ElevatedButton(
              onPressed: () async{
                launch(International);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: P2,
                onPrimary: P3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone,size: 25,color: P5,),
                  Container(width: 10,),
                  const Text('International',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: P5,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      radius: 20,
    );
  }

}