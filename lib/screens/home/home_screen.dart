import 'package:flutter/material.dart';
import 'package:flutter_base/commoncompant/appbar.dart';
import 'package:flutter_base/commoncompant/error_view.dart';
import 'package:flutter_base/commoncompant/loader.dart';
import 'package:flutter_base/model/game_model_entity.dart';
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
      body: Container(
        decoration: BoxDecoration(gradient: getGradient),
        child: Column(
          children: [
            Obx(() => CustomAppBar(
                  title: 'Home',
                  icon: controller.isGridView.value == true
                      ? ImageConst.list.getPath()
                      : ImageConst.grid.getPath(),
                  onPress: () => {
                    controller.isGridView.value = !controller.isGridView.value
                  },
                )),
            controller.obx(
                (state) => Expanded(
                      child: Obx(() => controller.isGridView.value == true
                          ? gridView()
                          : listView()),
                    ),
                onLoading: getLoader(),
                onEmpty: ErrorView(
                    apiErrorMessage: "client_empty".tr,
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
        ),
      ),
    );
  }

  listView() {
    return ListView.builder(
      controller: controller.scrollController,
      shrinkWrap: true,
      itemCount: controller.gameList!.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(child: getListItem(controller.gameList![index]));
      },
    );
  }

  Widget getListItem(GameModelResults gameModelResults) {
    return Padding(
      padding: const EdgeInsets.only( top: 10, left: 10, right: 10),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.black26,
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
                  image: DecorationImage(
                    image: NetworkImage(
                        gameModelResults.backgroundImage ?? defaultImage),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: FadeInImage.assetNetwork(
                      placeholder: defaultImage,
                      fit: BoxFit.fill,
                      image: gameModelResults.backgroundImage ?? defaultImage),
                ),
              ),
              10.0.widthSizedBox,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.0.heightSizedBox,
                    Text(
                      gameModelResults.name!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.subtitle2!.bold
                          .apply(color: AppColors.colorWhite),
                    ),
                    5.0.heightSizedBox,
                    Text(
                      'Metacritic Score:${gameModelResults.metacritic.toString()} ',
                      style: Get.textTheme.caption!.regular
                          .apply(color: AppColors.colorWhite),
                    ),
                    5.0.heightSizedBox,
                    Text(
                      gameModelResults.released!,
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
    );
  }

  gridView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
        child: new GridView.count(
          controller: controller.scrollController,
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 2,
          children:
              new List<Widget>.generate(controller.gameList!.length, (index) {
            return new GridTile(
              child: getGridItem(controller.gameList![index]),
            );
          }),
        ),
      ),
    );
  }

  getGridItem(GameModelResults gameModelResults) {
    return InkWell(
        onTap: () => {},
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(8),topRight:Radius.circular(8))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gameModelResults.name!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.subtitle2!.bold
                          .apply(color: AppColors.colorBlack),
                    ),
                    Text(
                      dateFormat(gameModelResults.released!),
                      style: Get.textTheme.caption!.regular
                          .apply(color: AppColors.colorBlack),
                    ),
                    5.0.widthSizedBox,
                    Text(
                      'Metacritic Score:${gameModelResults.metacritic.toString()}',
                      style: Get.textTheme.caption!.regular
                          .apply(color: AppColors.secondDarkColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
