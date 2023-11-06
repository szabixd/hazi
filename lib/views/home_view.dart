import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hazi_2023_11_06/controller/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Számológép"),
          ),
          body: Column(
            children: [
              Card(
                child: ListTile(
                  leading: CupertinoButton(
                    child: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      controller.szamModositas(1, false);
                    },
                  ),
                  title: Center(child: Text(controller.szam1.toString())),
                  trailing: CupertinoButton(
                    child: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      controller.szamModositas(1, true);
                    },
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CupertinoButton(
                    child: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      controller.szamModositas(2, false);
                    },
                  ),
                  title: Center(child: Text(controller.szam2.toString())),
                  trailing: CupertinoButton(
                    child: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      controller.szamModositas(2, true);
                    },
                  ),
                ),
              ),
              Divider(),
              Card(
                child: ListTile(
                  title: Center(
                    child: Text(
                        "Összeadás: " + controller.szamologep(operator: '+')),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Center(
                    child: Text(
                        "Kivonás: " + controller.szamologep(operator: '-')),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Center(
                    child: Text(
                        "Szorzat: " + controller.szamologep(operator: '*')),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Center(
                    child: Text(
                        "Hányados: " + controller.szamologep(operator: '/')),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
