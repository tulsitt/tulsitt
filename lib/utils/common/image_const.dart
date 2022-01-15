String getLottie(String imageName) {
  return "assets/lottie/$imageName";
}

String getImages(String imageName) {
  return "assets/images/$imageName";
}

String getIconPath(String imageName) {
  return "assets/icons/$imageName";
}

enum ImageConst { check, cross, splash, loader, grid, list, background }

extension imagePath on ImageConst {
  String getPath() {
    switch (this) {
      case ImageConst.cross:
        return getIconPath("cross.svg");
      case ImageConst.check:
        return getIconPath("check.svg");
      case ImageConst.splash:
        return getLottie("splash_screen.json");
      case ImageConst.loader:
        return getLottie("loader_boll.json");
      case ImageConst.grid:
        return getIconPath("grid.png");
      case ImageConst.list:
        return getIconPath("list.png");
      case ImageConst.background:
        return getIconPath("background.png");
    }
  }
}
