import 'package:flutter_study/res/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  static void show(String content) {
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: ColorsR.colorToast,
        textColor: ColorsR.colorWhite,
        fontSize: 16.0);
  }
}
