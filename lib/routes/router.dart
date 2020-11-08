import 'package:Prism/analytics/analytics_service.dart';
import 'package:Prism/routes/routing_constants.dart';
import 'package:Prism/payments/upgrade.dart';
import 'package:Prism/ui/pages/home/collections/collectionViewScreen.dart';
import 'package:Prism/ui/pages/download/downloadScreen.dart';
import 'package:Prism/ui/pages/download/downloadWallpaperViewScreen.dart';
import 'package:Prism/ui/pages/favourite/favouriteWallpaperScreen.dart';
import 'package:Prism/ui/pages/home/core/pageManager.dart';
import 'package:Prism/ui/pages/home/core/splashScreen.dart';
import 'package:Prism/ui/pages/home/wallpapers/wallpaperFilterScreen.dart';
import 'package:Prism/ui/pages/home/wallpapers/wallpaperScreen.dart';
import 'package:Prism/ui/pages/profile/aboutScreen.dart';
import 'package:Prism/ui/pages/profile/photographerProfile.dart';
import 'package:Prism/ui/pages/categories/colorScreen.dart';
import 'package:Prism/ui/pages/profile/profileScreen.dart';
import 'package:Prism/ui/pages/profile/profileWallViewScreen.dart';
import 'package:Prism/ui/pages/profile/sharePrismScreen.dart';
import 'package:Prism/ui/pages/profile/themeView.dart';
import 'package:Prism/ui/pages/profile/userProfileWallViewScreen.dart';
import 'package:Prism/ui/pages/search/searchScreen.dart';
import 'package:Prism/ui/pages/search/searchWallpaperScreen.dart';
import 'package:Prism/ui/pages/setup/setupScreen.dart';
import 'package:Prism/ui/pages/setup/setupViewScreen.dart';
import 'package:Prism/ui/pages/setup/shareSetupViewScreen.dart';
import 'package:Prism/ui/pages/share/shareWallViewScreen.dart';
import 'package:Prism/ui/pages/undefinedScreen.dart';
import 'package:Prism/ui/pages/home/core/notificationScreen.dart';
import 'package:Prism/ui/pages/upload/editWallScreen.dart';
import 'package:Prism/ui/pages/upload/setupGuidelines.dart';
import 'package:Prism/ui/pages/upload/tagSetupScreen.dart';
import 'package:Prism/ui/pages/upload/uploadSetupScreen.dart';
import 'package:Prism/ui/pages/upload/uploadWallScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as imagelib;

List<String> navStack = ["Home"];

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashRoute:
      navStack.add("Splash");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: splashRoute);
      return CupertinoPageRoute(builder: (context) => const SplashWidget());
    case searchRoute:
      navStack.add("Search");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: searchRoute);
      return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => SearchScreen());
    case homeRoute:
      navStack.add("Home");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: homeRoute);
      return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => PageManager());
    case profileRoute:
      navStack.add("Profile");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: profileRoute);
      return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => ProfileScreen());
    case photographerProfileRoute:
      navStack.add("User Profile");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: photographerProfileRoute);
      return CupertinoPageRoute(
          builder: (context) => UserProfile(settings.arguments as List));
    case downloadRoute:
      navStack.add("Downloads");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: downloadRoute);
      return CupertinoPageRoute(builder: (context) => DownloadScreen());
    case premiumRoute:
      navStack.add("Buy Premium");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: premiumRoute);
      return CupertinoPageRoute(builder: (context) => UpgradeScreen());
    case notificationsRoute:
      navStack.add("Notifications");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: notificationsRoute);
      return CupertinoPageRoute(builder: (context) => NotificationScreen());
    case colorRoute:
      navStack.add("Color");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: colorRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              ColorScreen(arguments: settings.arguments as List));
    case collectionViewRoute:
      navStack.add("CollectionsView");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: collectionViewRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              CollectionViewScreen(arguments: settings.arguments as List));
    case wallpaperRoute:
      navStack.add("Wallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: wallpaperRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              WallpaperScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case searchWallpaperRoute:
      navStack.add("Search Wallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: searchWallpaperRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              SearchWallpaperScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case downloadWallpaperRoute:
      navStack.add("DownloadedWallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: downloadWallpaperRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              DownloadWallpaperScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case shareRoute:
      navStack.add("SharedWallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: shareRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              ShareWallpaperViewScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case shareSetupViewRoute:
      navStack.add("SharedSetup");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: shareSetupViewRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              ShareSetupViewScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case favWallViewRoute:
      navStack.add("FavouriteWallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: favWallViewRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              FavWallpaperViewScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case setupRoute:
      navStack.add("Setups");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: setupRoute);
      return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) =>
              const SetupScreen());
    case setupViewRoute:
      navStack.add("SetupView");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: setupViewRoute);
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SetupViewScreen(
          arguments: settings.arguments as List,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = 0.0;
          const end = 1.0;
          const curve = Curves.easeOut;

          final tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return ScaleTransition(
            scale: animation.drive(tween),
            child: child,
          );
        },
      );
    case profileWallViewRoute:
      navStack.add("ProfileWallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: profileWallViewRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              ProfileWallViewScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case userProfileWallViewRoute:
      navStack.add("User ProfileWallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: userProfileWallViewRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              UserProfileWallViewScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case themeViewRoute:
      navStack.add("Themes");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: themeViewRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              ThemeView(arguments: settings.arguments as List));
    case editWallRoute:
      navStack.add("Edit Wallpaper");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: editWallRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              EditWallScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case uploadSetupRoute:
      navStack.add("Upload Setup");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: uploadSetupRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              UploadSetupScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case setupGuidelinesRoute:
      navStack.add("Setup Guidelines");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: setupGuidelinesRoute);
      return CupertinoPageRoute(
          builder: (context) => const SetupGuidelinesScreen(),
          fullscreenDialog: true);
    case setupTagRoute:
      navStack.add("Setup Tag");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: setupTagRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              TagSetupScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case uploadWallRoute:
      navStack.add("Add");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: uploadWallRoute);
      return CupertinoPageRoute(
          builder: (context) =>
              UploadWallScreen(arguments: settings.arguments as List),
          fullscreenDialog: true);
    case aboutRoute:
      navStack.add("About Prism");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: aboutRoute);
      return CupertinoPageRoute(
          builder: (context) => AboutScreen(), fullscreenDialog: true);
    case sharePrismRoute:
      navStack.add("Share Prism");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: sharePrismRoute);
      return CupertinoPageRoute(
          builder: (context) => SharePrismScreen(), fullscreenDialog: true);
    case wallpaperFilterRoute:
      navStack.add("Wallpaper Filter");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: wallpaperFilterRoute);
      return CupertinoPageRoute(
          builder: (context) => WallpaperFilterScreen(
                image: (settings.arguments as List)[0] as imagelib.Image,
                finalImage: (settings.arguments as List)[1] as imagelib.Image,
                filename: (settings.arguments as List)[2] as String,
                finalFilename: (settings.arguments as List)[3] as String,
              ),
          fullscreenDialog: true);
    default:
      navStack.add("undefined");
      debugPrint(navStack.toString());
      analytics.setCurrentScreen(screenName: "/undefined");
      return CupertinoPageRoute(
        builder: (context) => UndefinedScreen(
          name: settings.name,
        ),
      );
  }
}
