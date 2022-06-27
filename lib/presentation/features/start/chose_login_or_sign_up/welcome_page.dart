import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  int tapLogin = 0;
  int tapSignup = 0;

  @override

  /// Declare animation in initState
  void initState() {
    // TODO: implement initState
    /// Animation proses duration
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300))
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          setState(() {
            tapLogin = 0;
            tapSignup = 0;
          });
        }
      });
    super.initState();
  }

  /// To dispose animation controller
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
    // TODO: implement dispose
  }

  /// PlayAnimation set forward reverse
  Future<void> _playAnimation() async {
    try {
      await animationController.forward();
      await animationController.reverse();
    } on TickerCanceled {}
  }

  /// Component Widget layout UI
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    mediaQuery.devicePixelRatio;
    mediaQuery.size.height;
    mediaQuery.size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          // Container(
          //   color: Colors.white,
          //   child: new Carousel(
          //     boxFit: BoxFit.cover,
          //     autoplay: true,
          //     animationDuration: Duration(milliseconds: 300),
          //     dotSize: 0.0,
          //     dotSpacing: 16.0,
          //     dotBgColor: Colors.transparent,
          //     showIndicator: false,
          //     overlayShadow: false,
          //     images: [
          //       AssetImage('assets/img/girl.png'),
          //       AssetImage("assets/img/SliderLogin2.png"),
          //       AssetImage('assets/img/SliderLogin3.png'),
          //       AssetImage("assets/img/SliderLogin4.png"),
          //     ],
          //   ),
          // ),
          Container(
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
            child: ListView(
              padding: const EdgeInsets.all(0.0),
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: mediaQuery.padding.top + 50.0),
                          ),
                          const Center(
                            child: Hero(
                              tag: "shop",
                              child: Text(
                                'title',
                                style: TextStyle(
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32.0,
                                  letterSpacing: 0.4,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 160.0,
                                  right: 160.0,
                                  top: mediaQuery.padding.top + 190.0,
                                  bottom: 10.0),
                              child: Container(
                                color: Colors.white,
                                height: 0.5,
                              )),
                          const Text(
                            'hintChoseLogin',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Sans",
                                letterSpacing: 1.3),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 250.0),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        tapLogin == 0
                            ? Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  splashColor: Colors.white,
                                  onTap: () {
                                    setState(() {
                                      tapLogin = 1;
                                    });
                                    _playAnimation();
                                  },
                                  child: const ButtonCustom(
                                    txt: 'signUp',
                                  ),
                                ),
                              )
                            : AnimationSplashSignup(
                                animationController: animationController,
                              ),
                        const Padding(padding: EdgeInsets.only(top: 15.0)),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              /// To set white line (Click to open code)
                              Container(
                                color: Colors.white,
                                height: 0.2,
                                width: 80.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // Navigator.of(context).pushReplacement(
                                    //     PageRouteBuilder(
                                    //         pageBuilder: (_, __, ___) =>
                                    //             new bottomNavigationBar()));
                                  },
                                  child: const Text(
                                    'orSkip',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: "Sans",
                                        fontSize: 15.0),
                                  ),
                                ),
                              ),

                              /// To set white line (Click to open code)
                              Container(
                                color: Colors.white,
                                height: 0.2,
                                width: 80.0,
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 70.0),
                        ),
                      ],
                    ),
                    tapSignup == 0
                        ? Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: () {
                                setState(() {
                                  tapSignup = 1;
                                });
                                _playAnimation();
                              },
                              child: const ButtonCustom(
                                txt: 'login',
                              ),
                            ),
                          )
                        : AnimationSplashLogin(
                            animationController: animationController,
                          ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonCustom extends StatelessWidget {
  final String txt;
  final GestureTapCallback? onTap;

  const ButtonCustom({Key? key, required this.txt, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white,
        child: LayoutBuilder(builder: (context, constraint) {
          return Container(
            width: 300.0,
            height: 52.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.transparent,
                border: Border.all(color: Colors.white)),
            child: Center(
                child: Text(
              txt,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Sans",
                  letterSpacing: 0.5),
            )),
          );
        }),
      ),
    );
  }
}

/// Set Animation Login if user click button login
class AnimationSplashLogin extends StatefulWidget {
  AnimationSplashLogin({Key? key, required this.animationController})
      : animation = Tween(
          end: 900.0,
          begin: 70.0,
        ).animate(CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn)),
        super(key: key);

  final AnimationController animationController;
  final Animation animation;

  @override
  _AnimationSplashLoginState createState() => _AnimationSplashLoginState();
}

/// Set Animation Login if user click button login
class _AnimationSplashLoginState extends State<AnimationSplashLogin> {
  @override
  Widget build(BuildContext context) {
    widget.animationController.addListener(() {
      if (widget.animation.isCompleted) {
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (BuildContext context) => new loginScreen()));
      }
    });

    return AnimatedBuilder(
      animation: widget.animationController,
      builder: _buildAnimation,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0),
      child: Container(
        height: widget.animation.value,
        width: widget.animation.value,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: widget.animation.value < 600
              ? BoxShape.circle
              : BoxShape.rectangle,
        ),
      ),
    );
  }
}

/// Set Animation signup if user click button signup
class AnimationSplashSignup extends StatefulWidget {
  AnimationSplashSignup({Key? key, required this.animationController})
      : animation = Tween(
          end: 900.0,
          begin: 70.0,
        ).animate(CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn)),
        super(key: key);

  final AnimationController animationController;
  final Animation animation;

  @override
  _AnimationSplashSignupState createState() => _AnimationSplashSignupState();
}

/// Set Animation signup if user click button signup
class _AnimationSplashSignupState extends State<AnimationSplashSignup> {
  @override
  Widget build(BuildContext context) {
    widget.animationController.addListener(() {
      if (widget.animation.isCompleted) {
        // Navigator.of(context).pushReplacement(
        //     MaterialPageRoute(builder: (BuildContext context) => new Signup()
        //     ));
      }
    });
    return AnimatedBuilder(
      animation: widget.animationController,
      builder: _buildAnimation,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0),
      child: Container(
        height: widget.animation.value,
        width: widget.animation.value,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: widget.animation.value < 600
              ? BoxShape.circle
              : BoxShape.rectangle,
        ),
      ),
    );
  }
}
