import 'package:alobhatestapp/view/widget/data_card.dart';
import 'package:alobhatestapp/view/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:alobhatestapp/controller/user_controller.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Test app"),
      ),
      body: SafeArea(
        child: Obx(() {
          UserController userController = Get.find<UserController>();
          return ListView(
            children: [
              //Search Bar
              SearchBar(
                textEditingController: userController.textEditingController,
                callback: () => userController.searchData(
                    userController.textEditingController.text.toString()),
              ),
              //List
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: userController.users.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : userController.textEditingController.text.toString() !=
                                "" &&
                            userController.usersSearched.isEmpty
                        ? const Center(
                            child: Text("Oops!, no result found"),
                          )
                        : userController.usersSearched.isNotEmpty
                            ? ListView.builder(
                                itemCount: userController.usersSearched.length,
                                itemBuilder: (context, index) {
                                  return DataCard(
                                    email: userController
                                        .usersSearched[index].companyEmail,
                                    id: userController.usersSearched[index].id
                                        .toString(),
                                  );
                                },
                              )
                            : ListView.builder(
                                itemCount: userController.users.length,
                                itemBuilder: (context, index) {
                                  return DataCard(
                                    email: userController
                                        .users[index].companyEmail,
                                    id: userController.users[index].id
                                        .toString(),
                                  );
                                },
                              ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
