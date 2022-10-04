import 'package:alobhatestapp/model/user_model.dart';
import 'package:alobhatestapp/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  RxList<UserModel> users = <UserModel>[].obs;
  RxList<UserModel> usersSearched = <UserModel>[].obs;
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData() async {
    Response response = await ApiService().getResponse();
    if (response.statusCode == 200) {
      for (var item in response.body) {
        users.add(UserModel.fromJson(item));
      }
    } else {
      Get.snackbar(
        "Something went wrong!",
        "Please try again later",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  searchData(String input) {
    print(input);
    if (input != "") {
      users.any((element) {
        print("yes");
        if (element.id.toString() == input) {
          usersSearched.add(element);
        } else {
          print("No");
          usersSearched.clear();
        }
        return true;
      });
    } else {
      print("No");
      usersSearched.clear();
    }
  }
}
