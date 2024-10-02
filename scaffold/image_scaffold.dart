import 'package:flutter/material.dart';

class FEScaffoldGradient extends Scaffold {
  final ImageProvider image;

  const FEScaffoldGradient({
    super.key,
    required this.image,
    super.appBar,
    super.body,
    super.floatingActionButton,
    super.floatingActionButtonLocation,
    super.floatingActionButtonAnimator,
    super.persistentFooterButtons,
    super.drawer,
    super.endDrawer,
    super.bottomNavigationBar,
    super.bottomSheet,
    super.resizeToAvoidBottomInset,
    super.primary,
    super.drawerDragStartBehavior,
    super.extendBody,
    super.extendBodyBehindAppBar,
    super.drawerScrimColor,
    super.drawerEdgeDragWidth,
    super.drawerEnableOpenDragGesture,
    super.endDrawerEnableOpenDragGesture,
    super.restorationId,
  }) : super(backgroundColor: Colors.transparent);

  @override
  _FEScaffoldState createState() => _FEScaffoldState();
}

class _FEScaffoldState extends ScaffoldState {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: (widget as FEScaffoldGradient).image,
          fit: BoxFit.cover,
        ),
      ),
      child: super.build(context),
    );
  }
}
