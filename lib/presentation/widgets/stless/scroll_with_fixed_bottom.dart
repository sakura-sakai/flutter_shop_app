part of widgets;

class ScrollWithFixedBottom extends HookWidget {
  const ScrollWithFixedBottom({
    Key? key,
    required this.scrollChild,
    required this.fixedBottom,
  }) : super(key: key);

  final Widget scrollChild;
  final Widget fixedBottom;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: <Widget>[
              Expanded(child: scrollChild),
              fixedBottom,
            ],
          ),
        ),
      ],
    );
  }
}
