import 'package:flutter/material.dart';
import 'package:flutter_base/commoncompant/common.dart';
import 'package:flutter_base/commoncompant/error_view.dart';
import 'package:flutter_base/commoncompant/loader.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:flutter_base/utils/common/image_const.dart';
import 'package:flutter_base/utils/theme/colors.dart';
import 'package:get/get.dart';
import 'details_controller.dart';
import 'package:flutter_base/utils/extensions/extension.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, this.id, this.name, this.image}) : super(key: key);
  final controller = Get.put(DetailsController());
  final String? id;
  final String? name;
  final String? image;

  @override
  Widget build(BuildContext context) {
    controller.getGameDetails(id!);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConst.background.getPath()),
            fit: BoxFit.fill,
          ),
        ),
        child: NestedScrollView(
          physics: ScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                backgroundColor: AppColors.mainColor,
                expandedHeight: Get.size.height * 0.4,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    name!,
                    textScaleFactor: 1,
                    style: Get.textTheme.subtitle1!.bold
                        .apply(color: AppColors.colorWhite),
                  ),
                  background: Hero(
                    tag: id!,
                    child: Stack(
                      children: [
                        FadeInImage(
                            height: Get.size.height * 0.5,
                            width: Get.size.width,
                            fit: BoxFit.fill,
                            placeholder: NetworkImage(defaultImage),
                            image: NetworkImage(image ?? defaultImage)),
                        Container(
                          width: Get.size.width,
                          height: Get.size.height * 0.5,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(child: Builder(builder: (context) {
            return controller.obx(
                    (state) => ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          parseHtmlString(
                              controller.detailsModelEntity!.description),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: Get.textTheme.bodyText1!.bold
                              .apply(color: AppColors.colorWhite),
                        ),
                      ),
                      5.0.heightSizedBox,
                      getTitle('genres'.tr),
                      5.0.heightSizedBox,
                      getGeneraView(),
                      5.0.heightSizedBox,
                      getTitle('publishers'.tr),
                      5.0.heightSizedBox,
                      getPublishersView(),
                      getTitle('platforms'.tr),
                      5.0.heightSizedBox,
                      getPlatformsView(),
                    ]),
                onLoading: getLoader(),
                onEmpty: ErrorView(
                    apiErrorMessage: "game_details_empty".tr,
                    buttonText: "try_again".tr,
                    onButtonPressed: () {
                      controller.getGameDetails(id!);
                    }), onError: (error) {
              return ErrorView(
                  apiErrorMessage: error,
                  buttonText: "try_again".tr,
                  onButtonPressed: () {
                    controller.getGameDetails(id!);
                  });
            });
          })),
        ),
      ),
    );
  }

  getGeneraView() {
    return Container(
      height: Get.height * 0.22,
      child: ListView.builder(
          itemCount: controller.detailsModelEntity!.genres!.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return getItem(
                name: controller.detailsModelEntity!.genres![index].name,
                image: controller
                    .detailsModelEntity!.genres![index].imageBackground);
          }),
    );
  }

  getPublishersView() {
    return Container(
      height: Get.height * 0.22,
      child: ListView.builder(
          itemCount: controller.detailsModelEntity!.publishers!.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return getItem(
                name: controller.detailsModelEntity!.publishers![index].name,
                image: controller
                    .detailsModelEntity!.publishers![index].imageBackground);
          }),
    );
  }

  getPlatformsView() {
    return Container(
      height: Get.height * 0.22,
      child: ListView.builder(
          itemCount: controller.detailsModelEntity!.platforms!.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return getItem(
                name: controller
                    .detailsModelEntity!.platforms![index].platform!.name,
                image: controller.detailsModelEntity!.platforms![index]
                    .platform!.imageBackground);
          }),
    );
  }

  getTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: Get.textTheme.subtitle1!.bold.apply(color: AppColors.colorGreen),
      ),
    );
  }

  getItem({String? name, String? image}) {
    return Padding(
      padding: EdgeInsets.only(right: 8, left: 8),
      child: Stack(
        children: [
          Container(
            width: Get.height * 0.22,
            height: Get.height * 0.22,
            clipBehavior: Clip.antiAlias,
            child: FadeInImage(
              image: NetworkImage(image ?? defaultImage),
              placeholder: NetworkImage(defaultImage),
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
          Container(
              width: Get.height * 0.22,
              height: Get.height * 0.22,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              child: Text(
                name ?? '',
                maxLines: 2,
                style: Get.textTheme.subtitle2!.bold
                    .apply(color: AppColors.colorWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
