import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Const/api.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class Api {
  static MethodGet({required String Endpoints}) async {
    try {
      var url = Uri.https(apiURL, Endpoints);
      var response = await http.get(url);
      var json1 = await json.decode(response.body);
      if (response.statusCode == 200) {
        return json1;
      } else {
        return false;
      }
    } catch (error) {
      print(error);
    }
  }
}