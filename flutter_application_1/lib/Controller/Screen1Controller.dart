import 'package:flutter_application_1/Model/comments.dart';
import 'package:flutter_application_1/Model/posts.dart';
import 'package:flutter_application_1/Servies/ApiClass.dart';
import 'package:flutter_application_1/Servies/EndPont.dart';
import 'package:get/get.dart';

class Data extends GetxController {
  List<comments> Data1 = [];
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    data();
  }

  data() async {
    var Alldata = await Api.MethodGet(Endpoints: Endpoints.comments);

    for (var x in Alldata) {
      Data1.add(comments.fromJson(json: x));
      print("-------------------");
    }
    print(Data1[1].id);
    
  }
}
