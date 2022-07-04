import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/core/const/constants.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/theme/theme.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';


class PageSlider extends HookWidget {
  const PageSlider({
    Key? key,
    required this.title,
    required this.imgPath,
    required this.content,
  }) : super(key: key);

  final String title;
  final String imgPath;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: TextView(
              title,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 5,
            child: Image.asset(
              imgPath,
              width: 90.w,
              height: 90.w,
              alignment: Alignment.center,
            ),
          ),
          Flexible(
            flex: 3,
            child: TextView(
              content,
              textAlign: TextAlign.center,
              fontColor: FontColor.darkGrey,
              maxLines: 4,
            ),
          ),
          const SizedBox.shrink(),
        ],
      ),
    );
  }
}
