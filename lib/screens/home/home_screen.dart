import 'package:flutter/material.dart';
import 'package:flutter_base/commoncompant/error_view.dart';
import 'package:flutter_base/commoncompant/loader.dart';
import 'package:flutter_base/model/game_model_entity.dart';
import 'package:flutter_base/screens/details/details_screen.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:flutter_base/utils/common/image_const.dart';
import 'package:flutter_base/utils/theme/colors.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'home_controller.dart';
import 'package:flutter_base/utils/extensions/extension.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        actions: [
          Obx(() => Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GestureDetector(
                  onTap: () {
                    controller.isGridView.value = !controller.isGridView.value;
                  },
                  child: Image.asset(
                    controller.isGridView.value == true
                        ? ImageConst.list.getPath()
                        : ImageConst.grid.getPath(),
                    width: 20,
                    height: 20,
                    color: AppColors.colorWhite,
                  ),
                ),
              ))
        ],
        title: Text(
          'video_game'.tr,
          maxLines: 2,
          style:
              Get.textTheme.subtitle1!.bold.apply(color: AppColors.colorWhite),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConst.background.getPath()),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              controller.obx(
                  (state) => Expanded(
                        child: Obx(() => controller.isGridView.value == true
                            ? gridView()
                            : listView()),
                      ),
                  onLoading: getLoader(),
                  onEmpty: ErrorView(
                      apiErrorMessage: "game_empty".tr,
                      buttonText: "try_again".tr,
                      onButtonPressed: () {
                        controller.getGameList();
                      }), onError: (error) {
                return ErrorView(
                    apiErrorMessage: error,
                    buttonText: "try_again".tr,
                    onButtonPressed: () {
                      controller.getGameList();
                    });
              }),
              Obx(() => Visibility(
                    visible: controller.isLoadMoreVisible.value,
                    child: Lottie.asset(
                      ImageConst.loader.getPath(),
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ))
            ],
          )),
    );
  }

  listView() {
    return ListView.builder(
      controller: controller.scrollController,
      shrinkWrap: true,
      itemCount: controller.gameList!.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
            onTap: () => {
                  Get.to(() => DetailsScreen(
                        id: controller.gameList![index].id.toString(),
                        name: controller.gameList![index].name,
                        image: controller.gameList![index].backgroundImage,
                      ))
                },
            child: getListItem(controller.gameList![index]));
      },
    );
  }

  Widget getListItem(GameModelResults gameModelResults) {
    return Hero(
      tag: gameModelResults.id!.toString(),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.white12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    child: FadeInImage(
                        placeholder: NetworkImage(defaultImage),
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            gameModelResults.backgroundImage ?? defaultImage)),
                  ),
                ),
                10.0.widthSizedBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.0.heightSizedBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              gameModelResults.name!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Get.textTheme.subtitle2!.bold
                                  .apply(color: AppColors.colorWhite),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              gameModelResults.metacritic.toString(),
                              textAlign: TextAlign.center,
                              style: Get.textTheme.caption!.bold
                                  .apply(color: AppColors.colorWhite),
                            ),
                          )
                        ],
                      ),
                      5.0.heightSizedBox,
                      Text(
                        dateFormat(gameModelResults.released!),
                        style: Get.textTheme.caption!.regular
                            .apply(color: AppColors.secondDarkColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  gridView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5,top: 10),
        child: new GridView.count(
          controller: controller.scrollController,
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 2,
          children:
              new List<Widget>.generate(controller.gameList!.length, (index) {
            return GestureDetector(
              onTap: () => {
                Get.to(() => DetailsScreen(
                      id: controller.gameList![index].id.toString(),
                      name: controller.gameList![index].name,
                      image: controller.gameList![index].backgroundImage,
                    ))
              },
              child: new GridTile(
                child: getGridItem(controller.gameList![index]),
              ),
            );
          }),
        ),
      ),
    );
  }

  getGridItem(GameModelResults gameModelResults) {
    return Hero(
      tag: gameModelResults.id!.toString(),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.black12,
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: Get.size.width,
                  clipBehavior: Clip.antiAlias,
                  child: FadeInImage(
                    image: NetworkImage(
                        gameModelResults.backgroundImage ?? defaultImage),
                    placeholder: NetworkImage(defaultImage),
                    fit: BoxFit.fill,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    gameModelResults.metacritic.toString(),
                    textAlign: TextAlign.center,
                    style: Get.textTheme.caption!.bold
                        .apply(color: AppColors.colorWhite),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.0.heightSizedBox,
                  Text(
                    gameModelResults.name!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Get.textTheme.subtitle2!.bold
                        .apply(color: AppColors.colorWhite),
                  ),
                  7.0.heightSizedBox,
                  Text(
                    dateFormat(gameModelResults.released!),
                    style: Get.textTheme.caption!.regular
                        .apply(color: AppColors.secondDarkColor),
                  ),
                  5.0.widthSizedBox,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
