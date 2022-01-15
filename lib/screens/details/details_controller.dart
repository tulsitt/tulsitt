import 'package:flutter/material.dart';
import 'package:flutter_base/model/details_model_entity.dart';
import 'package:flutter_base/model/game_model_entity.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController with StateMixin<dynamic> {
  RxList<GameModelResults>? gameList = <GameModelResults>[].obs;
  DetailsModelEntity? detailsModelEntity;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  getGameDetails(String id) async {
    change(gameList, status: RxStatus.loading());
    Map<String, String> queryParams = {
      APIConstant.requestKeys.key: APIConstant.requestKeys.keyValue,
    };

    var gameDetails = await apiCall.getApiCall<DetailsModelEntity>(
        url: APIConstant.gameDetails + id, query: queryParams);
    if (gameDetails.data?.id != 0) {
      detailsModelEntity=gameDetails.data;
        change(detailsModelEntity, status: RxStatus.success());
    } else {
      change(detailsModelEntity,
          status: RxStatus.error(gameDetails.getException));
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
