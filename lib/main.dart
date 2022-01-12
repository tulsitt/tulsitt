import 'package:flutter_base/screens/splash/splash.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:flutter_base/utils/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_base/utils/helpers/connectivity.dart';
import 'package:get/get.dart';
import 'package:flutter_base/utils/extensions/extension.dart';
import 'commoncompant/loader.dart';
import 'lang/localization.dart';
import 'network/api_provider.dart';

GetIt sl = GetIt.instance; //Singletone helper //Register

void main() {
  setupServiceLocator();

  runApp(getProvider(
    child: MyApp(),
  ));
}

void setupServiceLocator() {
  sl.registerLazySingleton<ApiManager>(() => ApiManager());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MyConnectivity _connectivity = MyConnectivity.instance;

  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
  }

  @override
  void dispose() {
    _connectivity.disposeStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: <Widget>[
            GetMaterialApp(
                supportedLocales: Localization.supportedLocales,
                localizationsDelegates: [],
                builder: (BuildContext context, Widget? child) {
                  return getProvider(
                      child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaleFactor: 1.0,
                    ),
                    child: child!,
                  ));
                },
                fallbackLocale: Localization.fallbackLocale,
                locale: Localization.locale,
                translations: Localization(),
                debugShowCheckedModeBanner: false,
                theme: lightTheme,
                home: Stack(
                  children: <Widget>[const SplashScreen(), noInternet()],
                ),
                navigatorKey: kNavigatorKey),
            noInternet()
          ],
        );
      },
    );
  }

  Widget noInternet() {
    return StreamBuilder<dynamic>(
        stream: _connectivity.myStream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData &&
              snapshot.data.keys.toList()[0] as ConnectivityResult ==
                  ConnectivityResult.none) {
            return Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 52 + MediaQuery.of(context).padding.top,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.highlight_off,
                          color: Colors.white,
                        ),
                        //     //'asf'.svgAssetImage(width: 20,height: 20),
                        12.0.widthSizedBox,
                        Expanded(
                          child: Text(
                            'network_error'.tr,
                            style: Get.textTheme.button!
                                .apply(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ],
                ));
          } else {
            return Container();
          }
        });
  }
}
