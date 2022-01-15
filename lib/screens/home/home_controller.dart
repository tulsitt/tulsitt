import 'package:flutter/material.dart';
import 'package:flutter_base/model/game_model_entity.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  RxList<GameModelResults>? gameList = <GameModelResults>[].obs;
  var _page = 1;
  RxBool isLoadMoreAvailable = false.obs;
  RxBool isLoadMoreVisible = false.obs;
  RxBool isGridView = false.obs;

  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    getGameList();
    super.onInit();
    addItems();
  }

  addItems() async {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.position.pixels) {
        if (isLoadMoreAvailable.value && !this.status.isLoadingMore)
          getGameList(isLoadMore: true);
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  getGameList({bool isRefresh = false, bool isLoadMore = false}) async {
    if (isLoadMore) {
      _page += 1;
      isLoadMoreVisible.value = true;
      change(gameList, status: RxStatus.loadingMore());
    } else {
      _page = 1;
      if (!isRefresh) change(gameList, status: RxStatus.loading());
    }
    Map<String, String> queryParams = {
      APIConstant.requestKeys.dates: '${getStartDate()},${getEndDate()}',
      APIConstant.requestKeys.key: APIConstant.requestKeys.keyValue,
      APIConstant.requestKeys.ordering: APIConstant.requestKeys.orderingValue,
      APIConstant.requestKeys.page: _page.toString(),
      APIConstant.requestKeys.pageSize: APIConstant.requestKeys.pageSizeValue,
      APIConstant.requestKeys.platforms: APIConstant.requestKeys.platformsValue,
    };

    var gameModel = await apiCall.getApiCall<GameModelEntity>(
        url: APIConstant.gameList, query: queryParams);
    if (gameModel.data?.count != 0) {
      if (gameModel.data!.results!.isNotEmpty) {
        isLoadMoreAvailable.value = gameModel.data!.next != null;
        if (_page == 1) {
          gameList!.clear();
        }
        isLoadMoreVisible.value = false;
        gameList?.addAll(gameModel.data!.results ?? RxList.empty());
        change(gameList, status: RxStatus.success());
      } else {
        change(gameList, status: RxStatus.empty());
      }
    } else {
      change(gameList, status: RxStatus.error(gameModel.getException));
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
