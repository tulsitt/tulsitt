String getLottie(String imageName) {
  return "assets/lottie/$imageName";
}

String getIconPath(String imageName) {
  return "assets/icons/$imageName";
}

enum ImageConst { check, cross, splash, loader }

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
    }
  }
}
