import 'package:flutter_application_1/Model/comments.dart';
import 'package:flutter_application_1/Model/posts.dart';
import 'package:flutter_application_1/Servies/ApiClass.dart';
import 'package:flutter_application_1/Servies/EndPont.dart';
import 'package:get/get.dart';

class Data extends GetxController {
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    data();
    post();
  }

  data() async {
    var Alldata = await Api.MethodGet(Endpoints: Endpoints.comments);
    Data1 = [];
    for (var x in Alldata) {
      Data1.add(comments.fromJson(json: x));
      print("-------------------");
    }
    print(Data1[1].id);
  }

  post() async {
    var data = await Api.MethodGet(Endpoints: Endpoints.posts);
    Data2 = [];
    for (var x in data) {
      Data2.add(Postes.fromJson(json: x));
      print("-------------------");
    }
    print(Data2[1].title);
  }

  List<comments> Data1 = [comments()];
  List<Postes> Data2 = [Postes()];
}
