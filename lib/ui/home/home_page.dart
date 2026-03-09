import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/app/language_cubit.dart';
import 'package:base_flutter/app/theme_cubit.dart';
import 'package:base_flutter/data/model/enum/language.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/extension/context_extension.dart';
import 'package:base_flutter/extension/size_extension.dart';
import 'package:base_flutter/res/icons.dart';
import 'package:base_flutter/res/images.dart';
import 'package:base_flutter/router/app_page_route.dart';
import 'package:base_flutter/router/app_router.dart';
import 'package:base_flutter/theme/basic_app_theme.dart';
import 'package:base_flutter/theme/secondary_theme.dart';
import 'package:base_flutter/theme/text_theme.dart';
import 'package:base_flutter/ui/home/home_cubit.dart';
import 'package:base_flutter/util/image_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeCubit = di.get<HomeCubit>();

  @override
  void initState() {
    super.initState();
    _homeCubit.getUserLocal();
  }

  @override
  Widget build(BuildContext context) {
    // final currentAppTheme = rootNavigatorKey.currentState!.context
    //     .read<ThemeCubit>();
    // switch (currentAppTheme.state) {
    //   case BasicAppTheme _:
    //     theme = Theme.of(
    //       rootNavigatorKey.currentState!.context,
    //     ).extension<BasicAppTheme>()!;
    //     break;
    //   case SecondaryTheme _:
    //     theme = Theme.of(context).extension<SecondaryTheme>()!;
    //     break;
    // }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.bannerColor,
        title: Text(language.homePage, style: textTitleAppBar.bold),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(language.homePage, style: textTitle.bold),
            SizedBox(height: 40.hs),
            _buildImage(),
            SizedBox(height: 20.hs),
            _buildIcon(),
            SizedBox(height: 20.hs),
            _buildRemoteImage(),
            SizedBox(height: 20.hs),
            Text(language.language),
            SizedBox(height: 20.hs),
            _buildLanguage(),
            SizedBox(height: 20.hs),
            _buildTheme(),
            SizedBox(height: 20.hs),
            _buildTestListPage(),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguage() {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10.hs),
        decoration: BoxDecoration(color: context.theme.primaryColor, borderRadius: BorderRadius.circular(10.ws)),
        child: Text(language.changeLanguage, style: textContent),
      ),
      onTap: () {
        final currentLanguage = context.read<LanguageCubit>().state;
        if (currentLanguage == Language.vietnamese) {
          context.read<LanguageCubit>().setLanguage(Language.english);
        } else {
          context.read<LanguageCubit>().setLanguage(Language.vietnamese);
        }
      },
    );
  }

  Widget _buildTheme() {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10.hs),
        decoration: BoxDecoration(color: context.theme.primaryColor, borderRadius: BorderRadius.circular(10.ws)),
        child: Text(language.changeTheme),
      ),
      onTap: () {
        final currentTheme = context.read<ThemeCubit>().state;
        if (currentTheme is BasicAppTheme) {
          context.read<ThemeCubit>().setTheme(SecondaryTheme.self());
        } else {
          context.read<ThemeCubit>().setTheme(BasicAppTheme.self());
        }
        // setState(() {});
      },
    );
  }

  Widget _buildImage() {
    return _buildRowItem(
      leading: Text(language.imageAsset, style: textContent),
      trailing: ImageLoader.fromAssetImage(AppImages.test, width: 100.ws, height: 100.hs),
    );
  }

  Widget _buildIcon() {
    return _buildRowItem(
      leading: Text(language.icon, style: textContent),
      trailing: ImageLoader.fromSvg(AppIcons.test, height: 30.ws, width: 30.ws),
    );
  }

  Widget _buildRowItem({required Widget leading, required Widget trailing}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.ws),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [leading, trailing]),
    );
  }

  Widget _buildRemoteImage() {
    return _buildRowItem(
      leading: Text(language.imageRemote, style: textContent),
      trailing: ImageLoader.fromRemote(
        "https://img.freepik.com/free-photo/asia-businesswoman-using-laptop-talk-colleagues-about-plan-video-call-meeting-living-room_7861-3172.jpg?t=st=1754980909~exp=1754984509~hmac=0e221498705c4b0fb594268449e6d5ee82e90bf792ef718686c280f86e650d44&w=2000",
        width: 200.ws,
        height: 112.hs,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTestListPage() {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10.hs),
        decoration: BoxDecoration(color: context.theme.primaryColor, borderRadius: BorderRadius.circular(10.ws)),
        child: Text(language.testListPage),
      ),
      onTap: () {
        Navigation.goToPage(AppPageRoute.exampleList);
      },
    );
  }
}
