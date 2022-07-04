import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../../../l10n/l10n_manager.dart';
import 'splash_view_model.dart';

class SplashPage extends HookWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read(splashVMProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.man.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                  ),
                  TextView(
                    useL10n().welcomeTo,
                    fontFamily: FontFamily.sans,
                    fontColor: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 19.0,
                  ),
                  Hero(
                    tag: "shop",
                    child: TextView(
                      useL10n().title,
                      fontFamily: FontFamily.sans,
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 35.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

