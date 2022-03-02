import 'package:get/get.dart';

class ControllerGallery extends GetxController {
  List photos = [
    'http://1.bp.blogspot.com/-G42M7s8cN_4/VKDKBfj-e9I/AAAAAAAADls/FhXCPRVwJIc/s1600/kirby%2Bparaguas.png',
    'https://c.tenor.com/1IRs52LpIuIAAAAj/big-chonky-kirby.gif'

  ];

  int posit = 0;

  void NextPosit() {
    if (posit < photos.length - 1) {
      posit ++;
    } else {
      posit = 0;
    }
    update();
  }

  void PrevPosit() {
    if (posit == 0) {
      posit = photos.length - 1;
    } else {
      posit--;
    }
    update();
  }
}