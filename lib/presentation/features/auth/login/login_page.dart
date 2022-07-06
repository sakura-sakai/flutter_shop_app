import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/presentation/l10n/l10n.dart';

import '../../../widgets/widgets.dart';

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Assets.images.loginScreenBackground.path),
          fit: BoxFit.cover,
        )),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.0),
                Color.fromRGBO(0, 0, 0, 0.3)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: AlignmentDirectional.topCenter,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Assets.images.logo.image(height: 70.0),
                                Hero(
                                  tag: "shop",
                                  child: TextView(
                                    L10n.current.title,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            TextArea(
                              isRequired: true,
                              prefixIcon: const Icon(Icons.email),
                              labelText: L10n.current.email,
                            ),
                            ObscureTextArea(
                              isRequired: true,
                              prefixIcon: const Icon(Icons.vpn_key),
                              labelText: L10n.current.email,
                            ),

                            /// Button Signup
                            TextButton(
                              onPressed: () {
                                // Navigator.of(context).pushReplacement(
                                //     MaterialPageRoute(
                                //         builder: (BuildContext context) =>
                                //         new Signup()));
                              },
                              child: TextView(
                                L10n.current.notHave,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //   tap == 0
                  //       ? InkWell(
                  //     splashColor: Colors.yellow,
                  //     onTap: () {
                  //       setState(() {
                  //         tap = 1;
                  //       });
                  //       new LoginAnimation(
                  //         animationController: sanimationController.view,
                  //       );
                  //       _PlayAnimation();
                  //       return tap;
                  //     },
                  //     child: buttonBlackBottom(),
                  //   )
                  //       : new LoginAnimation(
                  //     animationController: sanimationController.view,
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
