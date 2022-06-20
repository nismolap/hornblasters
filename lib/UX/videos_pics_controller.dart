import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UX/webview_controller.dart';
import 'package:video_player/video_player.dart';

WebviewController webview = Get.put(WebviewController());

class VideosPicsController extends GetxController{

  var data = [].obs ;
  VideoPlayerController? controller;
  Future<void>? _initializeVideoPlayerFutur;

  void getdata() async{
    CollectionReference usersref = FirebaseFirestore.instance.collection('Pic_Vid');
    await usersref.get().then((value){
      value.docs.forEach((element) {
        data.add(element.data());
      });
    });
  }

  video(uri) {
    controller = VideoPlayerController.network(uri);
    _initializeVideoPlayerFutur = controller!.initialize();
    controller!.setLooping(true);
    controller!.setVolume(1);
    controller!.play();

  }



  void dialog(type , url , i){
    Get.defaultDialog(
      title: '',
      barrierDismissible: false,
      content: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child:

            type == 'image' ? Image(
              image: NetworkImage('${data.value[i]['uri']}'),
            ) : controller == null ? CircularProgressIndicator() : FutureBuilder(
              future: _initializeVideoPlayerFutur,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Center(
                    child: AspectRatio(
                      aspectRatio: controller!.value.aspectRatio,
                      child: VideoPlayer(controller!),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),


          ),
          Container(
            width: 300,
            height: 40,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: P2,
              onPressed: () {webview.webview(url,'Videos & Pics');},
              child: Text(
                'Shop Now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: P5,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
          Container(height: 10,),
          Container(
            width: 300,
            height: 40,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.red,
              onPressed: () {Get.back();controller!.pause();},
              child: Text(
                'Cancel',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: P5,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: P5,
      radius: 20,
    );
  }

}